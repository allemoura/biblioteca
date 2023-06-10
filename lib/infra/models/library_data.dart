import 'package:biblioteca/domain/entities/library.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_data.g.dart';

@JsonSerializable()
class LibraryData {
  final List<BookData>? reads;
  final List<BookData>? toRead;
  final List<BookData>? exchangeds;
  final List<BookData>? donateds;

  LibraryData(
      {required this.reads,
      required this.toRead,
      required this.exchangeds,
      required this.donateds});
  factory LibraryData.fromEntity(Library entity) => LibraryData(
      reads: entity.reads.map((e) => BookData.fromEntity(e)).toList(),
      toRead: entity.toRead.map((e) => BookData.fromEntity(e)).toList(),
      exchangeds: entity.exchangeds.map((e) => BookData.fromEntity(e)).toList(),
      donateds: entity.donateds.map((e) => BookData.fromEntity(e)).toList());

  Library toEntity() => Library(
      reads: reads == null ? [] : reads!.map((e) => e.toEntity()).toList(),
      toRead: toRead == null ? [] : toRead!.map((e) => e.toEntity()).toList(),
      exchangeds: exchangeds == null
          ? []
          : exchangeds!.map((e) => e.toEntity()).toList(),
      donateds:
          donateds == null ? [] : donateds!.map((e) => e.toEntity()).toList());

  factory LibraryData.fromJson(Map<String, dynamic> json) =>
      _$LibraryDataFromJson(json);
  Map<String, dynamic> toJson() => _$LibraryDataToJson(this);
}
