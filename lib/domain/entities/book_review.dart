import 'package:biblioteca/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_review.freezed.dart';

@freezed
abstract class BookReview with _$BookReview {
  const factory BookReview({
    User? author,
    required double stars,
    required DateTime createdAt,
    DateTime? updatedAt,
    String? review,
  }) = _BookReview;
}
