import 'package:flutter_bloc/flutter_bloc.dart';

import 'like_button_state.dart';

class LikeButtonCubit extends Cubit<LikeButtonState> {
  LikeButtonCubit()
      : super(
    const LikeButtonState(
      productList: [],
    ),
  );

  void init() async{
    await loadFavoriteProducts();
  }

  loadFavoriteProducts() {}
}
