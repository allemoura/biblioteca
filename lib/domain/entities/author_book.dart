import 'package:biblioteca/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_book.freezed.dart';

@freezed
abstract class AuthorBook with _$AuthorBook {
  const factory AuthorBook({
    required String name,
    required List<Book> books,
    String? imageUrl,
  }) = _AuthorBook;
}
