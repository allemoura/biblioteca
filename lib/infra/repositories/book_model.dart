import 'dart:async';

import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:biblioteca/infra/models/book_review_data.dart';
import 'package:biblioteca/infra/models/exchanged_data.dart';
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
        book.reviews.map((e) => BookReviewData.fromEntity(e).toJson()).toList();
    await _firestore.collection("books").doc(book.id).set(bookData);
  }

  Future<Book> convertBookReview(List<dynamic> reviewsBook, Book book) async {
    final List<BookReview> reviews = [];

    for (final value in reviewsBook) {
      final author = await getUser(value["author"]);
      reviews.add(
          BookReviewData.fromJson(value).toEntity().copyWith(author: author));
    }
    return book.copyWith(reviews: reviews);
  }

  Future<User?> getUser(String? userId) async {
    if (userId == null) return null;
    final resultUser = await _firestore.collection("users").doc(userId).get();
    final userData = resultUser.data();

    if (userData == null) return null;

    userData["library"] = {
      "reads": [],
      "toRead": [],
      "exchangeds": [],
      "donateds": []
    };
    return UserData.fromJson(userData).toEntity();
  }

  Future<Book?> getBook(String? bookId) async {
    final bookRef = await _firestore.collection("books").doc(bookId).get();

    if (!bookRef.exists) return null;
    final data = bookRef.data();
    final bookData = BookData.fromJson(data!).toEntity();

    return await convertBookReview(data["reviews"], bookData);
  }

  Future<BookData> getBookById(String? bookId) async {
    final bookRef = await _firestore.collection("books").doc(bookId).get();

    final data = bookRef.data();
    final bookData = BookData.fromJson(data!).toEntity();

    return BookData.fromEntity(
        await convertBookReview(data["reviews"], bookData));
  }

  Future<List<Exchanged>> getExchangedsLimited(String? userId) async {
    List<Exchanged> books = [];
    final result = await _firestore
        .collection("exchangeds")
        .where("bookExchanged", isNull: true)
        .limit(20)
        .get();
    for (final doc in result.docs) {
      if (doc.exists) {
        final data = doc.data();
        if (!data["id"].toString().contains(userId!)) {
          final bookSend = await getBook(data["bookSend"]);
          final userExchanged = await getUser(data["userExchanged"]);
          final userSend = await getUser(data["userSend"]);
          final bookExchanged = await getBook(data["bookExchanged"]);
          final Exchanged exchanged = Exchanged(
              id: data["id"],
              userSend: userSend!,
              bookSend: bookSend!,
              bookExchanged: bookExchanged,
              userExchanged: userExchanged);

          books.add(exchanged);
        }
      }
    }
    return books;
  }

  Future<List<Exchanged>> getMyExchangeds(String? userId) async {
    List<Exchanged> books = [];
    final result = await _firestore
        .collection("exchangeds")
        .where("id", isGreaterThanOrEqualTo: userId)
        .where("id", isLessThan: '${userId}z')
        .get();

    final result2 = await _firestore
        .collection("exchangeds")
        .where("userExchanged", isGreaterThanOrEqualTo: userId)
        .where("userExchanged", isLessThan: '${userId}z')
        .get();

    for (final doc in (result.docs + result2.docs)) {
      if (doc.exists) {
        final data = doc.data();
        if (data["userExchanged"] != null) {
          final bookSend = await getBook(data["bookSend"]);
          final userExchanged = await getUser(data["userExchanged"]);
          final userSend = await getUser(data["userSend"]);
          final bookExchanged = await getBook(data["bookExchanged"]);
          final Exchanged exchanged = Exchanged(
              id: data["id"],
              userSend: userSend!,
              bookSend: bookSend!,
              bookExchanged: bookExchanged,
              userExchanged: userExchanged,
              accepted: data["accepted"]);

          books.add(exchanged);
        }
      }
    }
    return books;
  }

  Future<void> setExchanged(
      Book toExchanged, Exchanged exchanged, User user) async {
    exchanged =
        exchanged.copyWith(bookExchanged: toExchanged, userExchanged: user);
    await _firestore
        .collection("exchangeds")
        .doc(exchanged.id)
        .set(ExchangedData.fromEntity(exchanged).toJson());
  }

  Future<void> setExchangedAccepted(Exchanged exchanged, bool accepted) async {
    exchanged = exchanged.copyWith(accepted: accepted);
    await _firestore
        .collection("exchangeds")
        .doc(exchanged.id)
        .set(ExchangedData.fromEntity(exchanged).toJson());
  }

  Future<void> createExchanged(String? userId, Book book) async {
    final id = "$userId${book.id}";
    await _firestore.collection("exchangeds").doc(id).set({
      "id": id,
      "userExchanged": null,
      "userSend": userId,
      "bookExchanged": null,
      "bookSend": book.id
    });
  }
}
