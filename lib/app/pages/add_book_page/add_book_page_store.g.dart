// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_book_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddBookPageStore on AddBookPageBase, Store {
  late final _$selectedRadioAtom =
      Atom(name: 'AddBookPageBase.selectedRadio', context: context);

  @override
  String? get selectedRadio {
    _$selectedRadioAtom.reportRead();
    return super.selectedRadio;
  }

  @override
  set selectedRadio(String? value) {
    _$selectedRadioAtom.reportWrite(value, super.selectedRadio, () {
      super.selectedRadio = value;
    });
  }

  late final _$rateAtom = Atom(name: 'AddBookPageBase.rate', context: context);

  @override
  double get rate {
    _$rateAtom.reportRead();
    return super.rate;
  }

  @override
  set rate(double value) {
    _$rateAtom.reportWrite(value, super.rate, () {
      super.rate = value;
    });
  }

  late final _$bookReviewAtom =
      Atom(name: 'AddBookPageBase.bookReview', context: context);

  @override
  BookReview? get bookReview {
    _$bookReviewAtom.reportRead();
    return super.bookReview;
  }

  @override
  set bookReview(BookReview? value) {
    _$bookReviewAtom.reportWrite(value, super.bookReview, () {
      super.bookReview = value;
    });
  }

  @override
  String toString() {
    return '''
selectedRadio: ${selectedRadio},
rate: ${rate},
bookReview: ${bookReview}
    ''';
  }
}
