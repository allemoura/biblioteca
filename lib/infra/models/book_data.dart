import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/infra/models/book_review_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_data.g.dart';

@JsonSerializable()
class BookData {
  final String title;
  final String author;
  final DateTime releaseDate;
  final String? isbn10;
  final String? isbn13;
  final String? cover;
  final List<BookReviewData> reviews;

  BookData(
      {required this.title,
      required this.author,
      required this.releaseDate,
      required this.reviews,
      this.isbn10,
      this.isbn13,
      this.cover});

  factory BookData.fromEntity(Book entity) => BookData(
      reviews: entity.reviews.map((e) => BookReviewData.fromEntity(e)).toList(),
      title: entity.title,
      author: entity.author,
      releaseDate: entity.releaseDate,
      isbn10: entity.isbn10,
      isbn13: entity.isbn13,
      cover: entity.cover);

  Book toEntity() => Book(
      title: title,
      author: author,
      releaseDate: releaseDate,
      isbn10: isbn10,
      isbn13: isbn13,
      cover: cover,
      reviews: reviews.map((e) => e.toEntity()).toList());

  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
  Map<String, dynamic> toJson() => _$BookDataToJson(this);
}
