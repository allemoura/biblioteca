import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:biblioteca/infra/models/raffle_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class RaffleModel extends Model {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static RaffleModel of(BuildContext context) =>
      ScopedModel.of<RaffleModel>(context);

  Future<List<Raffle>> getAllRafflesActiveLimited() async {
    final result = await _firestore.collection("raffles").limit(15).get();

    return setRaffles(result);
  }

  Future<List<Raffle>> getAllRafflesFilterByUser(String userId) async {
    final result = await _firestore
        .collection("raffles")
        .where({"createdBy": userId}).get();

    final data = result.docs.map((e) => e.data()).toList();

    List<Raffle> raffles = [];

    for (final raffleData in data) {
      final raffle = RaffleData.fromJson(raffleData).toEntity();

      raffles.add(await convertRaffle(raffle, raffleData));
    }
    return raffles;
  }

  Future<List<Raffle>> getAllRafflesActive() async {
    final result = await _firestore.collection("raffles").get();

    return setRaffles(result);
  }

  Future<List<Raffle>> setRaffles(
      QuerySnapshot<Map<String, dynamic>> result) async {
    final data = result.docs.map((e) => e.data()).toList();

    List<Raffle> raffles = [];

    for (final raffleData in data) {
      final raffle = RaffleData.fromJson(raffleData).toEntity();

      if (raffle.toRaffle.isAfter(DateTime.now())) {
        raffles.add(await convertRaffle(raffle, raffleData));
      }
    }
    return raffles;
  }

  Future<Raffle> convertRaffle(
      Raffle raffle, Map<String, dynamic> raffleData) async {
    final List<User> participants = [];

    for (final userId in raffleData["participants"]) {
      final user = await getUser(userId);
      participants.add(user!);
    }
    return raffle.copyWith(
        book: await getBook(raffleData["book"]),
        createdBy: await getUser(raffleData["cretedBy"]),
        winner: raffleData.containsKey("winner")
            ? await getUser(raffleData["winner"])
            : null,
        participants: participants);
  }

  Future<Book> getBook(String bookId) async {
    final resultBook = await _firestore.collection("books").doc(bookId).get();
    final bookData = resultBook.data();
    final bookEntity = BookData.fromJson(bookData!).toEntity();
    final List<BookReview> reviews = [];

    for (int i = 0; i < bookEntity.reviews.length; i++) {
      final review = bookEntity.reviews[i];
      reviews.add(review.copyWith(
          author: await getUser((bookData["reviews"])[i]["author"])));
    }
    return bookEntity.copyWith(reviews: reviews);
  }

  Future<User?> getUser(String? userId) async {
    if (userId == null) return null;
    final resultBook = await _firestore.collection("users").doc(userId).get();

    return UserData.fromJson(resultBook.data()!).toEntity();
  }

  Future<void> addNewParticipant(Raffle raffle, User participant) async {
    final newParticipants = raffle.participants;
    newParticipants.add(participant);
    Map<String, dynamic> data =
        RaffleData.fromEntity(raffle.copyWith(participants: newParticipants))
            .toJson();
    data["participants"] = newParticipants.map((e) => e.id).toList();
    data["book"] = raffle.book!.id;
    await _firestore.collection("raffles").doc(raffle.id).set(data);
  }
}
