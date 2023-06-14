import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/domain/usecases/book/filter_book.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:mobx/mobx.dart';

part 'search_page_store.g.dart';

class SearchPageStore = SearchPageBase with _$SearchPageStore;

abstract class SearchPageBase with Store {
  final FilterBook _filterBook = FilterBook();

  @observable
  ObservableList<Book> books = ObservableList.of([]);

  @observable
  ObservableList<User> users = ObservableList.of([]);

  @observable
  String filterOption = "book";

  @observable
  UserModel? userModel;

  void init(UserModel model) {
    userModel = model;
  }

  void setFilterOption(String value) => filterOption = value;

  Future<void> filterBooks(String? book) async {
    if (book != null) {
      books = ObservableList.of(await _filterBook(book));
    }
  }

  Future<void> filterUser(String? user) async {
    if (user != null) {
      users = ObservableList.of((await userModel!.getUsersByFilter(user))
          .map((e) => e.toEntity())
          .toList());
    }
  }
}
