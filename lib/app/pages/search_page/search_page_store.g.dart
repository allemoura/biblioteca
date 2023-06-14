// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchPageStore on SearchPageBase, Store {
  late final _$booksAtom = Atom(name: 'SearchPageBase.books', context: context);

  @override
  ObservableList<Book> get books {
    _$booksAtom.reportRead();
    return super.books;
  }

  @override
  set books(ObservableList<Book> value) {
    _$booksAtom.reportWrite(value, super.books, () {
      super.books = value;
    });
  }

  late final _$usersAtom = Atom(name: 'SearchPageBase.users', context: context);

  @override
  ObservableList<User> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<User> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$filterOptionAtom =
      Atom(name: 'SearchPageBase.filterOption', context: context);

  @override
  String get filterOption {
    _$filterOptionAtom.reportRead();
    return super.filterOption;
  }

  @override
  set filterOption(String value) {
    _$filterOptionAtom.reportWrite(value, super.filterOption, () {
      super.filterOption = value;
    });
  }

  late final _$userModelAtom =
      Atom(name: 'SearchPageBase.userModel', context: context);

  @override
  UserModel? get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(UserModel? value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  @override
  String toString() {
    return '''
books: ${books},
users: ${users},
filterOption: ${filterOption},
userModel: ${userModel}
    ''';
  }
}
