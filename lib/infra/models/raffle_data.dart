import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:biblioteca/infra/utils/convert_timestamp.dart';
import 'package:biblioteca/infra/utils/server_timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raffle_data.g.dart';

@JsonSerializable()
class RaffleData {
  @JsonKey(toJson: bookParamToJson, fromJson: bookParamFromJson)
  final BookData? book;
  final String cep;
  @JsonKey(toJson: createdByParamToJson, fromJson: winnerParamFromJson)
  final UserData? createdBy;
  @ServerTimestampConverter()
  final DateTime toRaffle;
  @ServerTimestampConverter()
  final DateTime createdAt;
  @TimestampConverter()
  final DateTime? updatedAt;
  @TimestampConverter()
  final DateTime? confirmDate;
  final bool toSend;
  @JsonKey(toJson: winnerParamToJson, fromJson: winnerParamFromJson)
  final UserData? winner;
  @JsonKey(toJson: participantsParamToJson, fromJson: participantsParamFromJson)
  final List<UserData>? participants;
  final String? id;

  RaffleData({
    this.book,
    this.createdBy,
    required this.cep,
    required this.toRaffle,
    required this.createdAt,
    this.updatedAt,
    required this.toSend,
    this.id,
    this.participants,
    this.winner,
    this.confirmDate,
  });

  factory RaffleData.fromEntity(Raffle entity) => RaffleData(
      confirmDate: entity.confirmDate,
      book: entity.book != null ? BookData.fromEntity(entity.book!) : null,
      cep: entity.cep,
      createdBy: entity.createdBy != null
          ? UserData.fromEntity(entity.createdBy!)
          : null,
      toRaffle: entity.toRaffle,
      createdAt: entity.createdAt,
      toSend: entity.toSend,
      id: entity.id,
      winner:
          entity.winner != null ? UserData.fromEntity(entity.winner!) : null,
      participants:
          entity.participants.map((e) => UserData.fromEntity(e)).toList(),
      updatedAt: entity.updatedAt);

  Raffle toEntity() => Raffle(
      book: book?.toEntity(),
      cep: cep,
      createdBy: createdBy?.toEntity(),
      confirmDate: confirmDate,
      toRaffle: toRaffle,
      createdAt: createdAt,
      toSend: toSend,
      id: id,
      winner: winner?.toEntity(),
      participants: participants == null
          ? []
          : participants!.map((e) => e.toEntity()).toList(),
      updatedAt: updatedAt);

  factory RaffleData.fromJson(Map<String, dynamic> json) =>
      _$RaffleDataFromJson(json);
  Map<String, dynamic> toJson() => _$RaffleDataToJson(this);
}

String? createdByParamToJson(UserData? userData) {
  if (userData == null) return null;
  return userData.id!;
}

String? winnerParamToJson(UserData? userData) {
  if (userData == null) return null;
  return userData.id!;
}

List<String>? participantsParamToJson(List<UserData>? usersData) {
  if (usersData == null) return null;
  return usersData.map((e) => e.id!).toList();
}

List<UserData>? participantsParamFromJson(List<dynamic> usersData) => [];

UserData? winnerParamFromJson(dynamic usersData) => null;

BookData? bookParamFromJson(dynamic book) => null;

String bookParamToJson(BookData? book) => book!.id!;
