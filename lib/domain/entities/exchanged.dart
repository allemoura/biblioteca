import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchanged.freezed.dart';

@freezed
abstract class Exchanged with _$Exchanged {
  const factory Exchanged(
      {required User userExchanged,
      required Book bookExchanged,
      required Book bookSend}) = _Exchanged;
}
