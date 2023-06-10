// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_review_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookReviewData _$BookReviewDataFromJson(Map<String, dynamic> json) =>
    BookReviewData(
      stars: (json['stars'] as num).toDouble(),
      createdAt: const ServerTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp),
      review: json['review'] as String?,
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$BookReviewDataToJson(BookReviewData instance) =>
    <String, dynamic>{
      'stars': instance.stars,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'review': instance.review,
    };
