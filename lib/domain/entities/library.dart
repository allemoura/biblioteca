import 'package:biblioteca/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library.freezed.dart';

@freezed
abstract class Library with _$Library {
  const factory Library(
      {required List<Book> reads,
      required List<Book> toRead,
      required List<Book> exchangeds,
      required List<Book> donateds,
      required List<Book> toExchangeds}) = _Library;
}
