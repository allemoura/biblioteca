// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LibraryData _$LibraryDataFromJson(Map<String, dynamic> json) => LibraryData(
      reads: paramFromJson(json['reads'] as List?),
      toRead: paramFromJson(json['toRead'] as List?),
      exchangeds: paramFromJson(json['exchangeds'] as List?),
      donateds: paramFromJson(json['donateds'] as List?),
    );

Map<String, dynamic> _$LibraryDataToJson(LibraryData instance) =>
    <String, dynamic>{
      'reads': paramToJson(instance.reads),
      'toRead': paramToJson(instance.toRead),
      'exchangeds': paramToJson(instance.exchangeds),
      'donateds': paramToJson(instance.donateds),
    };
