// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      name: json['name'] as String,
      email: json['email'] as String,
      library: LibraryData.fromJson(json['library'] as Map<String, dynamic>),
      raffles: (json['raffles'] as List<dynamic>)
          .map((e) => RaffleData.fromJson(e as Map<String, dynamic>))
          .toList(),
      password: json['password'] as String?,
      imageProfile: json['imageProfile'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'imageProfile': instance.imageProfile,
      'id': instance.id,
    };
