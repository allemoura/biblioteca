// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchanged_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangedData _$ExchangedDataFromJson(Map<String, dynamic> json) =>
    ExchangedData(
      userExchanged:
          UserData.fromJson(json['userExchanged'] as Map<String, dynamic>),
      bookExchanged:
          BookData.fromJson(json['bookExchanged'] as Map<String, dynamic>),
      bookSend: BookData.fromJson(json['bookSend'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExchangedDataToJson(ExchangedData instance) =>
    <String, dynamic>{
      'userExchanged': instance.userExchanged,
      'bookExchanged': instance.bookExchanged,
      'bookSend': instance.bookSend,
    };
