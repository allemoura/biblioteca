import 'package:biblioteca/infra/models/library_data.dart';
import 'package:biblioteca/infra/models/raffle_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  final String name;
  final String email;
  final String? password;
  final LibraryData library;
  final List<RaffleData> raffles;

  UserData(
      {required this.name,
      required this.email,
      required this.library,
      required this.raffles,
      this.password});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
