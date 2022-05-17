// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class SearcherEvent extends Equatable {
  const SearcherEvent();
}

class SearcherSearched extends SearcherEvent {
  const SearcherSearched({required this.searchText});

  final String searchText;

  @override
  List<Object> get props => [searchText];
}
