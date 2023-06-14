import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    required String title,
    required String author,
    required DateTime releaseDate,
    required List<BookReview> reviews,
    required bool toExchanged,
    String? isbn10,
    String? isbn13,
    String? cover,
    String? id,
  }) = _Book;
}
