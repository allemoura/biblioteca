import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'library_page_store.g.dart';

class LibraryPageStore = LibraryPageBase with _$LibraryPageStore;

abstract class LibraryPageBase with Store {
  @observable
  bool isLoading = true;

  @observable
  UserModel? model;

  @observable
  TabController? tabController;

  @observable
  int index = 0;

  init(TickerProvider vsync, BuildContext context) {
    tabController = TabController(
      length: 4,
      vsync: vsync,
    );

    tabController?.addListener(() {
      index = tabController!.index;
    });

    model = UserModel.of(context);
    isLoading = false;
  }
}
