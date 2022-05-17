import 'dart:async';

import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:bvt1901_practice/features/search/domain/state/searcher_event.dart';
import 'package:bvt1901_practice/features/search/domain/state/searcher_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:stream_transform/stream_transform.dart';

import '../../../../di/service_locator.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';
import '../searcher_repository.dart';

class SearcherBloc extends Bloc<SearcherEvent, SearchState> {
  SearcherRepository get productRepository => getIt();

  SearcherBloc() : super(const SearchState()) {
    on<SearcherSearched>(_onProductSearch,
        transformer: debounce(const Duration(milliseconds: 200)));
  }

  FutureOr _onProductSearch(
    SearcherSearched event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      error: null,
      loading: true,
    ));
    try {
      List<ProductEntity> result =
          await productRepository.search(searchText: event.searchText);
      emit(state.copyWith(
        productList: result,
        loading: false,
      ));
    } on ErrorModel catch (e) {
      emit(state.copyWith(
        error: e,
        loading: false,
      ));
    }
  }
}

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}
