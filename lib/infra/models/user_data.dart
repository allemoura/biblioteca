import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/models/library_data.dart';
import 'package:biblioteca/infra/models/raffle_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  final String name;
  final String email;
  final String? password;
  final String? imageProfile;
  final String? id;

  @JsonKey(includeToJson: false)
  final LibraryData library;

  @JsonKey(includeToJson: false)
  final List<RaffleData> raffles;

  UserData(
      {required this.name,
      required this.email,
      required this.library,
      required this.raffles,
      this.password,
      this.imageProfile,
      this.id});

  factory UserData.fromEntity(User entity) => UserData(
      name: entity.name,
      id: entity.id,
      email: entity.email,
      imageProfile: entity.imageProfile,
      library: LibraryData.fromEntity(entity.library),
      raffles: entity.raffles.map((e) => RaffleData.fromEntity(e)).toList(),
      password: entity.password);

  User toEntity() => User(
      name: name,
      email: email,
      id: id,
      imageProfile: imageProfile,
      library: library.toEntity(),
      raffles: raffles.map((e) => e.toEntity()).toList(),
      password: password);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
