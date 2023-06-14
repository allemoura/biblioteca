import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchanged.freezed.dart';

@freezed
abstract class Exchanged with _$Exchanged {
  const factory Exchanged(
      {required String id,
      User? userExchanged,
      required User userSend,
      Book? bookExchanged,
      bool? accepted,
      required Book bookSend}) = _Exchanged;
}
