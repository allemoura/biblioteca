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

  init(BuildContext context) {
    userModel = UserModel.of(context);
  }

  setRadio(String? value) => selectedRadio = value;
  setRate(double value) => rate = value;

  Future<void> addBook(Book book) async {
    if (reviewController.text.isNotEmpty) {
      BookReview bookReview = BookReview(
          author: userModel!.userData!.toEntity(),
          stars: rate,
          createdAt: DateTime.now(),
          review: reviewController.text);
      final reviwes = book.reviews;
      reviwes.add(bookReview);
      book = book.copyWith(reviews: reviwes);
    }
    if (!await bookModel.contaisBook(book.id!)) {
      await bookModel.addNewBook(book);
    }
    if (selectedRadio == "Quero ler") {
      userModel!.addNewBookToRead(book);
    } else {
      userModel!.addNewBookRead(book);
    }
  }
}
