import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raffle_data.g.dart';

@JsonSerializable()
class RaffleData {
  final BookData book;
  final String cep;
  final DateTime toRaffle;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final bool toSend;
  final List<UserData> participants;

  RaffleData({
    required this.book,
    required this.cep,
    required this.toRaffle,
    required this.createdAt,
    this.updatedAt,
    required this.toSend,
    required this.participants,
  });

  factory RaffleData.fromEntity(Raffle entity) => RaffleData(
      book: BookData.fromEntity(entity.book),
      cep: entity.cep,
      toRaffle: entity.toRaffle,
      createdAt: entity.createdAt,
      toSend: entity.toSend,
      participants:
          entity.participants.map((e) => UserData.fromEntity(e)).toList(),
      updatedAt: entity.updatedAt);

  Raffle toEntity() => Raffle(
      book: book.toEntity(),
      cep: cep,
      toRaffle: toRaffle,
      createdAt: createdAt,
      toSend: toSend,
      participants: participants.map((e) => e.toEntity()).toList(),
      updatedAt: updatedAt);

  factory RaffleData.fromJson(Map<String, dynamic> json) =>
      _$RaffleDataFromJson(json);
  Map<String, dynamic> toJson() => _$RaffleDataToJson(this);
}
