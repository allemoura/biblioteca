import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:mobx/mobx.dart';

part 'book_reviews_page_store.g.dart';

class BookReviewsPageStore = BookReviewsPageBase with _$BookReviewsPageStore;

abstract class BookReviewsPageBase with Store {
  final BookModel _bookModel = BookModel();

  @observable
  Book? book;

  @observable
  bool isLoading = true;

  Future<void> init(Book bookByGoogle) async {
    final bookResult = await _bookModel.getBook(bookByGoogle.id);
    if (bookResult != null) {
      book = bookResult;
    } else {
      book = bookByGoogle;
    }

    isLoading = false;
  }
}
