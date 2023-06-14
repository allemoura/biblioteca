// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorData _$AuthorDataFromJson(Map<String, dynamic> json) => AuthorData(
      name: json['name'] as String,
      books: (json['books'] as List<dynamic>)
          .map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$AuthorDataToJson(AuthorData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'books': instance.books,
      'imageUrl': instance.imageUrl,
    };
