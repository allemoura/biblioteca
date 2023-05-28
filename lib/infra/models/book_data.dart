import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_data.g.dart';

@JsonSerializable()
class BookData {
  final String name;
  final String author;
  final DateTime releaseDate;
  final String? isbn10;
  final String? isbn13;
  final String? cover;

  BookData(
      {required this.name,
      required this.author,
      required this.releaseDate,
      this.isbn10,
      this.isbn13,
      this.cover});
  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
  Map<String, dynamic> toJson() => _$BookDataToJson(this);
}
