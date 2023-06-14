// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raffles_list_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RafflesListPageStore on RafflesListPageBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'RafflesListPageBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$rafflesAtom =
      Atom(name: 'RafflesListPageBase.raffles', context: context);

  @override
  ObservableList<Raffle> get raffles {
    _$rafflesAtom.reportRead();
    return super.raffles;
  }

  @override
  set raffles(ObservableList<Raffle> value) {
    _$rafflesAtom.reportWrite(value, super.raffles, () {
      super.raffles = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
raffles: ${raffles}
    ''';
  }
}
