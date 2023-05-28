import 'package:biblioteca/infra/models/book_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_data.g.dart';

@JsonSerializable()
class LibraryData {
  final List<BookData> reads;
  final List<BookData> toRead;
  final List<BookData> exchangeds;
  final List<BookData> donateds;

  LibraryData(
      {required this.reads,
      required this.toRead,
      required this.exchangeds,
      required this.donateds});
  factory LibraryData.fromJson(Map<String, dynamic> json) =>
      _$LibraryDataFromJson(json);
  Map<String, dynamic> toJson() => _$LibraryDataToJson(this);
}
