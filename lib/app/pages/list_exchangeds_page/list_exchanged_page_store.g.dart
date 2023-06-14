// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_exchanged_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListExchangedPageStore on ListExchangedPageBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'ListExchangedPageBase.isLoading', context: context);

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

  late final _$exchangedsAtom =
      Atom(name: 'ListExchangedPageBase.exchangeds', context: context);

  @override
  ObservableList<Exchanged> get exchangeds {
    _$exchangedsAtom.reportRead();
    return super.exchangeds;
  }

  @override
  set exchangeds(ObservableList<Exchanged> value) {
    _$exchangedsAtom.reportWrite(value, super.exchangeds, () {
      super.exchangeds = value;
    });
  }

  late final _$userModelAtom =
      Atom(name: 'ListExchangedPageBase.userModel', context: context);

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
isLoading: ${isLoading},
exchangeds: ${exchangeds},
userModel: ${userModel}
    ''';
  }
}
