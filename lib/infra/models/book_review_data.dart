import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:biblioteca/infra/utils/convert_timestamp.dart';
import 'package:biblioteca/infra/utils/server_timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_review_data.g.dart';

@JsonSerializable()
class BookReviewData {
  @JsonKey(toJson: paramToJson, fromJson: paramFromJson)
  final UserData? author;
  final double stars;

  @ServerTimestampConverter()
  final DateTime createdAt;

  @TimestampConverter()
  final DateTime? updatedAt;
  final String? review;

  BookReviewData({
    required this.stars,
    this.author,
    required this.createdAt,
    this.review,
    this.updatedAt,
  });

  factory BookReviewData.fromEntity(BookReview entity) => BookReviewData(
      stars: entity.stars,
      author:
          entity.author == null ? null : UserData.fromEntity(entity.author!),
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      review: entity.review);

  BookReview toEntity() => BookReview(
      author: author?.toEntity(),
      stars: stars,
      createdAt: createdAt,
      updatedAt: updatedAt,
      review: review);

  factory BookReviewData.fromJson(Map<String, dynamic> json) =>
      _$BookReviewDataFromJson(json);
  Map<String, dynamic> toJson() => _$BookReviewDataToJson(this);
}

String paramToJson(UserData? user) {
  return user?.id ?? "";
}

UserData? paramFromJson(String userId) {
  UserData? user;
  FirebaseFirestore.instance
      .collection("users")
      .doc(userId)
      .get()
      .then((value) => user = UserData.fromJson(value.data()!));
  return user;
}
