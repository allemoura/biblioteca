// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchanged.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Exchanged {
  User get userExchanged => throw _privateConstructorUsedError;
  Book get bookExchanged => throw _privateConstructorUsedError;
  Book get bookSend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangedCopyWith<Exchanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangedCopyWith<$Res> {
  factory $ExchangedCopyWith(Exchanged value, $Res Function(Exchanged) then) =
      _$ExchangedCopyWithImpl<$Res, Exchanged>;
  @useResult
  $Res call({User userExchanged, Book bookExchanged, Book bookSend});

  $UserCopyWith<$Res> get userExchanged;
  $BookCopyWith<$Res> get bookExchanged;
  $BookCopyWith<$Res> get bookSend;
}

/// @nodoc
class _$ExchangedCopyWithImpl<$Res, $Val extends Exchanged>
    implements $ExchangedCopyWith<$Res> {
  _$ExchangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userExchanged = null,
    Object? bookExchanged = null,
    Object? bookSend = null,
  }) {
    return _then(_value.copyWith(
      userExchanged: null == userExchanged
          ? _value.userExchanged
          : userExchanged // ignore: cast_nullable_to_non_nullable
              as User,
      bookExchanged: null == bookExchanged
          ? _value.bookExchanged
          : bookExchanged // ignore: cast_nullable_to_non_nullable
              as Book,
      bookSend: null == bookSend
          ? _value.bookSend
          : bookSend // ignore: cast_nullable_to_non_nullable
              as Book,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userExchanged {
    return $UserCopyWith<$Res>(_value.userExchanged, (value) {
      return _then(_value.copyWith(userExchanged: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get bookExchanged {
    return $BookCopyWith<$Res>(_value.bookExchanged, (value) {
      return _then(_value.copyWith(bookExchanged: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get bookSend {
    return $BookCopyWith<$Res>(_value.bookSend, (value) {
      return _then(_value.copyWith(bookSend: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExchangedCopyWith<$Res> implements $ExchangedCopyWith<$Res> {
  factory _$$_ExchangedCopyWith(
          _$_Exchanged value, $Res Function(_$_Exchanged) then) =
      __$$_ExchangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User userExchanged, Book bookExchanged, Book bookSend});

  @override
  $UserCopyWith<$Res> get userExchanged;
  @override
  $BookCopyWith<$Res> get bookExchanged;
  @override
  $BookCopyWith<$Res> get bookSend;
}

/// @nodoc
class __$$_ExchangedCopyWithImpl<$Res>
    extends _$ExchangedCopyWithImpl<$Res, _$_Exchanged>
    implements _$$_ExchangedCopyWith<$Res> {
  __$$_ExchangedCopyWithImpl(
      _$_Exchanged _value, $Res Function(_$_Exchanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userExchanged = null,
    Object? bookExchanged = null,
    Object? bookSend = null,
  }) {
    return _then(_$_Exchanged(
      userExchanged: null == userExchanged
          ? _value.userExchanged
          : userExchanged // ignore: cast_nullable_to_non_nullable
              as User,
      bookExchanged: null == bookExchanged
          ? _value.bookExchanged
          : bookExchanged // ignore: cast_nullable_to_non_nullable
              as Book,
      bookSend: null == bookSend
          ? _value.bookSend
          : bookSend // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$_Exchanged implements _Exchanged {
  const _$_Exchanged(
      {required this.userExchanged,
      required this.bookExchanged,
      required this.bookSend});

  @override
  final User userExchanged;
  @override
  final Book bookExchanged;
  @override
  final Book bookSend;

  @override
  String toString() {
    return 'Exchanged(userExchanged: $userExchanged, bookExchanged: $bookExchanged, bookSend: $bookSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exchanged &&
            (identical(other.userExchanged, userExchanged) ||
                other.userExchanged == userExchanged) &&
            (identical(other.bookExchanged, bookExchanged) ||
                other.bookExchanged == bookExchanged) &&
            (identical(other.bookSend, bookSend) ||
                other.bookSend == bookSend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userExchanged, bookExchanged, bookSend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangedCopyWith<_$_Exchanged> get copyWith =>
      __$$_ExchangedCopyWithImpl<_$_Exchanged>(this, _$identity);
}

abstract class _Exchanged implements Exchanged {
  const factory _Exchanged(
      {required final User userExchanged,
      required final Book bookExchanged,
      required final Book bookSend}) = _$_Exchanged;

  @override
  User get userExchanged;
  @override
  Book get bookExchanged;
  @override
  Book get bookSend;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangedCopyWith<_$_Exchanged> get copyWith =>
      throw _privateConstructorUsedError;
}
