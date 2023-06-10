// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raffle_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaffleData _$RaffleDataFromJson(Map<String, dynamic> json) => RaffleData(
      cep: json['cep'] as String,
      toRaffle: const ServerTimestampConverter()
          .fromJson(json['toRaffle'] as Timestamp),
      createdAt: const ServerTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp?),
      toSend: json['toSend'] as bool,
      id: json['id'] as String?,
      confirmDate: const TimestampConverter()
          .fromJson(json['confirmDate'] as Timestamp?),
    );

Map<String, dynamic> _$RaffleDataToJson(RaffleData instance) =>
    <String, dynamic>{
      'cep': instance.cep,
      'toRaffle': const ServerTimestampConverter().toJson(instance.toRaffle),
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'confirmDate': const TimestampConverter().toJson(instance.confirmDate),
      'toSend': instance.toSend,
      'id': instance.id,
    };
