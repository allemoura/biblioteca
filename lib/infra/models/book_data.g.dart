// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookData _$BookDataFromJson(Map<String, dynamic> json) => BookData(
      title: json['title'] as String,
      author: json['author'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => BookReviewData.fromJson(e as Map<String, dynamic>))
          .toList(),
      isbn10: json['isbn10'] as String?,
      isbn13: json['isbn13'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$BookDataToJson(BookData instance) => <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'isbn10': instance.isbn10,
      'isbn13': instance.isbn13,
      'cover': instance.cover,
      'reviews': instance.reviews,
    };
