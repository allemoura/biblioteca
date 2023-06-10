import 'dart:convert';

import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/infra/models/book_review_data.dart';
import 'package:biblioteca/infra/utils/server_timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_data.g.dart';

@JsonSerializable()
class BookData {
  final String title;
  final String author;

  @ServerTimestampConverter()
  final DateTime releaseDate;

  final String? isbn10;
  final String? isbn13;
  final String? cover;
  
  @JsonKey(includeToJson: true)
  final List<BookReviewData> reviews;

  final String? id;

  BookData(
      {required this.title,
      required this.author,
      required this.releaseDate,
      required this.reviews,
      this.isbn10,
      this.isbn13,
      this.cover,
      this.id});

  factory BookData.fromEntity(Book entity) => BookData(
      reviews: entity.reviews.map((e) => BookReviewData.fromEntity(e)).toList(),
      title: entity.title,
      author: entity.author,
      releaseDate: entity.releaseDate,
      isbn10: entity.isbn10,
      isbn13: entity.isbn13,
      id: entity.id,
      cover: entity.cover);

  Book toEntity() => Book(
      title: title,
      author: author,
      releaseDate: releaseDate,
      isbn10: isbn10,
      isbn13: isbn13,
      cover: cover,
      id: id,
      reviews: reviews.map((e) => e.toEntity()).toList());

  factory BookData.fromGoogleBook(Map<String, dynamic> json) {
    Map<String, dynamic> data = json["volumeInfo"];
    String author = "";
    if (data.containsKey("authors")) {
      for (final name in (json["volumeInfo"]["authors"] as List<dynamic>)) {
        author = author.isNotEmpty ? ",$name" : name;
      }
    }

    return BookData(
        id: json["id"],
        title: data["title"],
        author: author.isEmpty ? "Não informado" : author,
        releaseDate: (data["publishedDate"] as String).length == 4
            ? DateTime.parse("${data["publishedDate"]}-01-01")
            : DateTime.parse(data["publishedDate"]),
        isbn10: data["industryIdentifiers"].last["identifier"],
        isbn13: data["industryIdentifiers"].first["identifier"],
        cover: data.containsKey("imageLinks")
            ? data["imageLinks"]["thumbnail"]
            : "https://nnpdev.wustl.edu/img/bookCovers/genericBookCover.jpg",
        reviews: []);
  }

  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
  Map<String, dynamic> toJson() => _$BookDataToJson(this);
}
