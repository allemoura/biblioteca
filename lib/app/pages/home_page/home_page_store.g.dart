// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageStore on HomePageBase, Store {
  late final _$activeRafflesAtom =
      Atom(name: 'HomePageBase.activeRaffles', context: context);

  @override
  ObservableList<Raffle> get activeRaffles {
    _$activeRafflesAtom.reportRead();
    return super.activeRaffles;
  }

  @override
  set activeRaffles(ObservableList<Raffle> value) {
    _$activeRafflesAtom.reportWrite(value, super.activeRaffles, () {
      super.activeRaffles = value;
    });
  }

  @override
  String toString() {
    return '''
activeRaffles: ${activeRaffles}
    ''';
  }
}
