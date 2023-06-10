import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_review_data.g.dart';

@JsonSerializable()
class BookReviewData {
  final UserData author;
  final double stars;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String? review;

  BookReviewData({
    required this.stars,
    required this.author,
    required this.createdAt,
    this.review,
    this.updatedAt,
  });

  factory BookReviewData.fromEntity(BookReview entity) => BookReviewData(
      stars: entity.stars,
      author: UserData.fromEntity(entity.author),
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      review: entity.review);

  BookReview toEntity() => BookReview(
      author: author.toEntity(),
      stars: stars,
      createdAt: createdAt,
      updatedAt: updatedAt,
      review: review);

  factory BookReviewData.fromJson(Map<String, dynamic> json) =>
      _$BookReviewDataFromJson(json);
  Map<String, dynamic> toJson() => _$BookReviewDataToJson(this);
}
