import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'book_to_exchanged_page_store.g.dart';

class BookToExchangedPageStore = BookToExchangedPageBase
    with _$BookToExchangedPageStore;

abstract class BookToExchangedPageBase with Store {
  final TextEditingController reviewController = TextEditingController();
  final BookModel bookModel = BookModel();
  UserModel? userModel;

  @observable
  bool selectedRadio = false;

  @observable
  double rate = 0;

  @observable
  BookReview? bookReview;

  init(BuildContext context, List<BookReview> reviews) {
    userModel = UserModel.of(context);

    for (final review in reviews) {
      if (review.author!.id == userModel!.userData!.toEntity().id) {
        bookReview = review;
        rate = bookReview!.stars;
        reviewController.text = bookReview!.review!;
        break;
      }
    }
  }

  setRadio(bool? value) => selectedRadio = value ?? false;
  setRate(double value) => rate = value;

  Future<void> bookToExchanged(Book book) async {
    bookReview = bookReview?.copyWith(
        stars: rate, updatedAt: DateTime.now(), review: reviewController.text);

    List<BookReview> reviwes = [];
    reviwes.addAll(book.reviews);
    reviwes.removeWhere((element) => element.author == bookReview!.author);
    if (bookReview != null) {
      reviwes.add(bookReview!);
    }

    book = book.copyWith(reviews: reviwes, toExchanged: selectedRadio);

    await BookModel().createExchanged(userModel!.userData!.id, book);
  }
}
