import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/models/library_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  final String name;
  final String email;
  final String? password;
  final String? imageProfile;
  final String? id;

  @JsonKey(includeToJson: false, includeFromJson: false)
  final LibraryData? library;

  UserData(
      {required this.name,
      required this.email,
      this.library,
      this.password,
      this.imageProfile,
      this.id});

  factory UserData.fromEntity(User entity) => UserData(
      name: entity.name,
      id: entity.id,
      email: entity.email,
      imageProfile: entity.imageProfile,
      library: entity.library == null
          ? null
          : LibraryData.fromEntity(entity.library!),
      password: entity.password);

  User toEntity() => User(
      name: name,
      email: email,
      id: id,
      imageProfile: imageProfile,
      library: library?.toEntity(),
      password: password);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
