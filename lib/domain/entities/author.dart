import 'package:biblioteca/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';

@freezed
abstract class Author with _$Author {
  const factory Author({
    required String name,
    required List<Book> books,
  }) = _Author;
}
