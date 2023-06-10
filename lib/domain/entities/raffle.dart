import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raffle.freezed.dart';

@freezed
abstract class Raffle with _$Raffle {
  const factory Raffle(
      {required Book book,
      required String cep,
      required DateTime toRaffle,
      required DateTime createdAt,
      required bool toSend,
      DateTime? confirmDate,
      User? winner,
      required List<User> participants,
      DateTime? updatedAt}) = _Raffle;
}
