import 'package:biblioteca/domain/entities/library.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {required String name,
      required String email,
      Library? library,
      String? password,
      String? imageProfile,
      String? id}) = _User;
}
