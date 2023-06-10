import 'package:biblioteca/domain/entities/library.dart';
import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {required String name,
      required String email,
      required Library library,
      required List<Raffle> raffles,
      String? password,
      String? imageProfile,
      String? id}) = _User;
}
