import 'package:biblioteca/domain/entities/author.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_data.g.dart';

@JsonSerializable()
class AuthorData {
  final String name;
  final List<BookData> books;

  AuthorData({required this.name, required this.books});

  factory AuthorData.fromEntity(Author entity) => AuthorData(
      name: entity.name,
      books: entity.books.map((e) => BookData.fromEntity(e)).toList());

  Author toEntity() =>
      Author(name: name, books: books.map((e) => e.toEntity()).toList());

  factory AuthorData.fromJson(Map<String, dynamic> json) =>
      _$AuthorDataFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorDataToJson(this);
}
