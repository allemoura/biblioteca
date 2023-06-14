// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchanged_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangedData _$ExchangedDataFromJson(Map<String, dynamic> json) =>
    ExchangedData(
      id: json['id'] as String,
      userExchanged: json['userExchanged'] == null
          ? null
          : UserData.fromJson(json['userExchanged'] as Map<String, dynamic>),
      bookExchanged: json['bookExchanged'] == null
          ? null
          : BookData.fromJson(json['bookExchanged'] as Map<String, dynamic>),
      bookSend: json['bookSend'] == null
          ? null
          : BookData.fromJson(json['bookSend'] as Map<String, dynamic>),
      accepted: json['accepted'] as bool?,
      userSend: json['userSend'] == null
          ? null
          : UserData.fromJson(json['userSend'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExchangedDataToJson(ExchangedData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userExchanged': userParamToJson(instance.userExchanged),
      'userSend': userParamToJson(instance.userSend),
      'bookExchanged': bookExchangedParamToJson(instance.bookExchanged),
      'bookSend': bookToSendParamToJson(instance.bookSend),
      'accepted': instance.accepted,
    };
