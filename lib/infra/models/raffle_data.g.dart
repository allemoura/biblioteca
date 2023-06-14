// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raffle_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaffleData _$RaffleDataFromJson(Map<String, dynamic> json) => RaffleData(
      book: bookParamFromJson(json['book']),
      createdBy: winnerParamFromJson(json['createdBy']),
      cep: json['cep'] as String,
      toRaffle: const ServerTimestampConverter()
          .fromJson(json['toRaffle'] as Timestamp),
      createdAt: const ServerTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp?),
      toSend: json['toSend'] as bool,
      id: json['id'] as String?,
      participants: participantsParamFromJson(json['participants'] as List),
      winner: winnerParamFromJson(json['winner']),
      confirmDate: const TimestampConverter()
          .fromJson(json['confirmDate'] as Timestamp?),
    );

Map<String, dynamic> _$RaffleDataToJson(RaffleData instance) =>
    <String, dynamic>{
      'book': bookParamToJson(instance.book),
      'cep': instance.cep,
      'createdBy': createdByParamToJson(instance.createdBy),
      'toRaffle': const ServerTimestampConverter().toJson(instance.toRaffle),
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'confirmDate': const TimestampConverter().toJson(instance.confirmDate),
      'toSend': instance.toSend,
      'winner': winnerParamToJson(instance.winner),
      'participants': participantsParamToJson(instance.participants),
      'id': instance.id,
    };
