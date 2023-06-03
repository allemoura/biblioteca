// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_review_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookReviewData _$BookReviewDataFromJson(Map<String, dynamic> json) =>
    BookReviewData(
      stars: (json['stars'] as num).toDouble(),
      author: UserData.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      review: json['review'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$BookReviewDataToJson(BookReviewData instance) =>
    <String, dynamic>{
      'author': instance.author,
      'stars': instance.stars,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'review': instance.review,
    };
