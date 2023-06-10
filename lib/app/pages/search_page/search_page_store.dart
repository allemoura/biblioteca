import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/usecases/book/filter_book.dart';
import 'package:mobx/mobx.dart';

part 'search_page_store.g.dart';

class SearchPageStore = SearchPageBase with _$SearchPageStore;

abstract class SearchPageBase with Store {
  final FilterBook _filterBook = FilterBook();

  @observable
  ObservableList<Book> books = ObservableList.of([]);

  filterBooks(String? book) async {
    if (book != null) {
      books = ObservableList.of(await _filterBook(book));
    }
  }
}
