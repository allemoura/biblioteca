import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchanged_data.g.dart';

@JsonSerializable()
class ExchangedData {
  final UserData userExchanged;
  final BookData bookExchanged;
  final BookData bookSend;

  ExchangedData(
      {required this.userExchanged,
      required this.bookExchanged,
      required this.bookSend});

  factory ExchangedData.fromEntity(Exchanged entity) => ExchangedData(
      userExchanged: UserData.fromEntity(entity.userExchanged),
      bookExchanged: BookData.fromEntity(entity.bookExchanged),
      bookSend: BookData.fromEntity(entity.bookSend));

  Exchanged toEntity() => Exchanged(
      userExchanged: userExchanged.toEntity(),
      bookExchanged: bookExchanged.toEntity(),
      bookSend: bookSend.toEntity());
      
  factory ExchangedData.fromJson(Map<String, dynamic> json) =>
      _$ExchangedDataFromJson(json);
  Map<String, dynamic> toJson() => _$ExchangedDataToJson(this);
}
