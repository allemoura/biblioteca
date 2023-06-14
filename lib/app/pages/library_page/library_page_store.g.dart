// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LibraryPageStore on LibraryPageBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'LibraryPageBase.isLoading', context: context);

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

  late final _$modelAtom =
      Atom(name: 'LibraryPageBase.model', context: context);

  @override
  UserModel? get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(UserModel? value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$tabControllerAtom =
      Atom(name: 'LibraryPageBase.tabController', context: context);

  @override
  TabController? get tabController {
    _$tabControllerAtom.reportRead();
    return super.tabController;
  }

  @override
  set tabController(TabController? value) {
    _$tabControllerAtom.reportWrite(value, super.tabController, () {
      super.tabController = value;
    });
  }

  late final _$indexAtom =
      Atom(name: 'LibraryPageBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
model: ${model},
tabController: ${tabController},
index: ${index}
    ''';
  }
}
