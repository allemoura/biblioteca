// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LibraryData _$LibraryDataFromJson(Map<String, dynamic> json) => LibraryData(
      reads: (json['reads'] as List<dynamic>)
          .map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList(),
      toRead: (json['toRead'] as List<dynamic>)
          .map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList(),
      exchangeds: (json['exchangeds'] as List<dynamic>)
          .map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList(),
      donateds: (json['donateds'] as List<dynamic>)
          .map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LibraryDataToJson(LibraryData instance) =>
    <String, dynamic>{
      'reads': instance.reads,
      'toRead': instance.toRead,
      'exchangeds': instance.exchangeds,
      'donateds': instance.donateds,
    };
