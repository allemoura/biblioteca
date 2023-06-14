import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'add_book_page_store.g.dart';

class AddBookPageStore = AddBookPageBase with _$AddBookPageStore;

abstract class AddBookPageBase with Store {
  final TextEditingController reviewController = TextEditingController();
  final BookModel bookModel = BookModel();
  UserModel? userModel;

  @observable
  String? selectedRadio;

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

  setRadio(String? value) => selectedRadio = value;
  setRate(double value) => rate = value;

  Future<void> addBook(Book book) async {
    if (reviewController.text.isNotEmpty) {
      if (bookReview != null) {
        bookReview = bookReview?.copyWith(
            stars: rate,
            updatedAt: DateTime.now(),
            review: reviewController.text);
      } else {
        bookReview = BookReview(
            author: userModel!.userData!.toEntity(),
            stars: rate,
            createdAt: DateTime.now(),
            review: reviewController.text);
      }

      List<BookReview> reviwes = [];
      reviwes.addAll(book.reviews);
      reviwes.add(bookReview!);
      book = book.copyWith(reviews: reviwes);
    }

    await bookModel.addNewBook(book);

    if (selectedRadio == "Quero ler") {
      userModel!.addNewBookToRead(book);
    } else {
      userModel!.addNewBookRead(book);
    }
  }
}
