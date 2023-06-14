// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_raffle_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddRafflePageStore on AddRafflePageBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'AddRafflePageBase.isLoading', context: context);

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

  late final _$selectedDateAtom =
      Atom(name: 'AddRafflePageBase.selectedDate', context: context);

  @override
  DateTime? get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime? value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  late final _$selectedRadioAtom =
      Atom(name: 'AddRafflePageBase.selectedRadio', context: context);

  @override
  bool get selectedRadio {
    _$selectedRadioAtom.reportRead();
    return super.selectedRadio;
  }

  @override
  set selectedRadio(bool value) {
    _$selectedRadioAtom.reportWrite(value, super.selectedRadio, () {
      super.selectedRadio = value;
    });
  }

  late final _$bookAtom =
      Atom(name: 'AddRafflePageBase.book', context: context);

  @override
  Book? get book {
    _$bookAtom.reportRead();
    return super.book;
  }

  @override
  set book(Book? value) {
    _$bookAtom.reportWrite(value, super.book, () {
      super.book = value;
    });
  }

  late final _$controllerCepAtom =
      Atom(name: 'AddRafflePageBase.controllerCep', context: context);

  @override
  TextEditingController get controllerCep {
    _$controllerCepAtom.reportRead();
    return super.controllerCep;
  }

  @override
  set controllerCep(TextEditingController value) {
    _$controllerCepAtom.reportWrite(value, super.controllerCep, () {
      super.controllerCep = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
selectedDate: ${selectedDate},
selectedRadio: ${selectedRadio},
book: ${book},
controllerCep: ${controllerCep}
    ''';
  }
}
