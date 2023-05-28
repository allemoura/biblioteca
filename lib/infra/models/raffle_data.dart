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
  
  factory RaffleData.fromJson(Map<String, dynamic> json) =>
      _$RaffleDataFromJson(json);
  Map<String, dynamic> toJson() => _$RaffleDataToJson(this);
}
