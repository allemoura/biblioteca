// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raffle_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaffleData _$RaffleDataFromJson(Map<String, dynamic> json) => RaffleData(
      book: BookData.fromJson(json['book'] as Map<String, dynamic>),
      cep: json['cep'] as String,
      toRaffle: DateTime.parse(json['toRaffle'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      toSend: json['toSend'] as bool,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => UserData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RaffleDataToJson(RaffleData instance) =>
    <String, dynamic>{
      'book': instance.book,
      'cep': instance.cep,
      'toRaffle': instance.toRaffle.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'toSend': instance.toSend,
      'participants': instance.participants,
    };
