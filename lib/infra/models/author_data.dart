import 'package:biblioteca/domain/entities/author_book.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_data.g.dart';

@JsonSerializable()
class AuthorData {
  final String name;
  final List<BookData> books;
  final String? imageUrl;

  AuthorData({required this.name, required this.books, this.imageUrl});

  factory AuthorData.fromEntity(AuthorBook entity) => AuthorData(
      name: entity.name,
      imageUrl: entity.imageUrl,
      books: entity.books.map((e) => BookData.fromEntity(e)).toList());

  AuthorBook toEntity() => AuthorBook(
      name: name,
      imageUrl: imageUrl,
      books: books.map((e) => e.toEntity()).toList());

  factory AuthorData.fromJson(Map<String, dynamic> json) =>
      _$AuthorDataFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorDataToJson(this);
}
