// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_reviews_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BookReviewsPageStore on BookReviewsPageBase, Store {
  late final _$bookAtom =
      Atom(name: 'BookReviewsPageBase.book', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: 'BookReviewsPageBase.isLoading', context: context);

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
book: ${book},
isLoading: ${isLoading}
    ''';
  }
}
