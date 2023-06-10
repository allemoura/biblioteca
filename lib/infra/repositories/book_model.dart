import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:biblioteca/infra/models/book_review_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BookModel extends Model {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static BookModel of(BuildContext context) =>
      ScopedModel.of<BookModel>(context);

  Future<bool> contaisBook(String id) async {
    final value = await _firestore.collection("books").doc(id).get();
    final data = value.data();
    return data != null;
  }

  Future<void> addNewBook(Book book) async {
    final bookData = BookData.fromEntity(book).toJson();

    bookData["reviews"] =
        book.reviews.map((e) => BookReviewData.fromEntity(e)).toList();
    await _firestore.collection("books").doc(book.id).set(bookData);
  }

  Future<Book> convertBookReview(Book book) async {
    final List<BookReview> reviews = [];

    for (final review in book.reviews) {
      reviews.add(review.copyWith(author: await getUser(review.author!.id)));
    }
    return book.copyWith(reviews: reviews);
  }

  Future<User?> getUser(String? userId) async {
    if (userId == null) return null;
    final resultBook = await _firestore.collection("users").doc(userId).get();

    return UserData.fromJson(resultBook.data()!).toEntity();
  }

  Future<BookData> getBookById(String? bookId) async {
    final resultBook = await _firestore.collection("books").doc(bookId).get();

    return BookData.fromJson(resultBook.data()!);
  }
}
