import 'dart:math';

import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchanged_data.g.dart';

@JsonSerializable()
class ExchangedData {
  final String id;
  @JsonKey(includeFromJson: true, toJson: userParamToJson)
  final UserData? userExchanged;
  @JsonKey(includeFromJson: true, toJson: userParamToJson)
  final UserData? userSend;
  @JsonKey(includeFromJson: true, toJson: bookExchangedParamToJson)
  final BookData? bookExchanged;
  @JsonKey(includeFromJson: true, toJson: bookToSendParamToJson)
  final BookData? bookSend;
  final bool? accepted;

  ExchangedData({
    required this.id,
    this.userExchanged,
    this.bookExchanged,
    this.bookSend,
    this.accepted,
    this.userSend,
  });

  factory ExchangedData.fromEntity(Exchanged entity) => ExchangedData(
      id: entity.id,
      accepted: entity.accepted,
      userSend: UserData.fromEntity(entity.userSend),
      userExchanged: entity.userExchanged == null
          ? null
          : UserData.fromEntity(entity.userExchanged!),
      bookExchanged: entity.bookExchanged == null
          ? null
          : BookData.fromEntity(entity.bookExchanged!),
      bookSend: BookData.fromEntity(entity.bookSend));

  Exchanged toEntity() => Exchanged(
      id: id,
      userSend: userExchanged!.toEntity(),
      userExchanged: userExchanged?.toEntity(),
      bookExchanged: bookExchanged?.toEntity(),
      bookSend: bookSend!.toEntity());

  factory ExchangedData.fromJson(Map<String, dynamic> json) =>
      _$ExchangedDataFromJson(json);
  Map<String, dynamic> toJson() => _$ExchangedDataToJson(this);
}

String? bookToSendParamToJson(BookData? book) => book?.id;
String? bookExchangedParamToJson(BookData? book) => book?.id;
String? userParamToJson(UserData? user) => user?.id;
