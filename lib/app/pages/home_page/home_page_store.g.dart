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

  late final _$booksAtom = Atom(name: 'HomePageBase.books', context: context);

  @override
  ObservableList<Exchanged> get books {
    _$booksAtom.reportRead();
    return super.books;
  }

  @override
  set books(ObservableList<Exchanged> value) {
    _$booksAtom.reportWrite(value, super.books, () {
      super.books = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HomePageBase.isLoading', context: context);

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

  @override
  String toString() {
    return '''
activeRaffles: ${activeRaffles},
books: ${books},
isLoading: ${isLoading}
    ''';
  }
}
