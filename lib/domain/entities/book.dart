import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    required String title,
    required String author,
    required DateTime releaseDate,
    String? isbn10,
    String? isbn13,
    String? cover,
  }) = _Book;
}
