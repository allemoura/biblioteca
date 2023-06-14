// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raffle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Raffle {
  Book? get book => throw _privateConstructorUsedError;
  String get cep => throw _privateConstructorUsedError;
  DateTime get toRaffle => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get toSend => throw _privateConstructorUsedError;
  DateTime? get confirmDate => throw _privateConstructorUsedError;
  User? get winner => throw _privateConstructorUsedError;
  User? get createdBy => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<User> get participants => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RaffleCopyWith<Raffle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaffleCopyWith<$Res> {
  factory $RaffleCopyWith(Raffle value, $Res Function(Raffle) then) =
      _$RaffleCopyWithImpl<$Res, Raffle>;
  @useResult
  $Res call(
      {Book? book,
      String cep,
      DateTime toRaffle,
      DateTime createdAt,
      bool toSend,
      DateTime? confirmDate,
      User? winner,
      User? createdBy,
      String? id,
      List<User> participants,
      DateTime? updatedAt});

  $BookCopyWith<$Res>? get book;
  $UserCopyWith<$Res>? get winner;
  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$RaffleCopyWithImpl<$Res, $Val extends Raffle>
    implements $RaffleCopyWith<$Res> {
  _$RaffleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? cep = null,
    Object? toRaffle = null,
    Object? createdAt = null,
    Object? toSend = null,
    Object? confirmDate = freezed,
    Object? winner = freezed,
    Object? createdBy = freezed,
    Object? id = freezed,
    Object? participants = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
      cep: null == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
      toRaffle: null == toRaffle
          ? _value.toRaffle
          : toRaffle // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toSend: null == toSend
          ? _value.toSend
          : toSend // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmDate: freezed == confirmDate
          ? _value.confirmDate
          : confirmDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as User?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<User>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $BookCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get winner {
    if (_value.winner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.winner!, (value) {
      return _then(_value.copyWith(winner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RaffleCopyWith<$Res> implements $RaffleCopyWith<$Res> {
  factory _$$_RaffleCopyWith(_$_Raffle value, $Res Function(_$_Raffle) then) =
      __$$_RaffleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Book? book,
      String cep,
      DateTime toRaffle,
      DateTime createdAt,
      bool toSend,
      DateTime? confirmDate,
      User? winner,
      User? createdBy,
      String? id,
      List<User> participants,
      DateTime? updatedAt});

  @override
  $BookCopyWith<$Res>? get book;
  @override
  $UserCopyWith<$Res>? get winner;
  @override
  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$_RaffleCopyWithImpl<$Res>
    extends _$RaffleCopyWithImpl<$Res, _$_Raffle>
    implements _$$_RaffleCopyWith<$Res> {
  __$$_RaffleCopyWithImpl(_$_Raffle _value, $Res Function(_$_Raffle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? cep = null,
    Object? toRaffle = null,
    Object? createdAt = null,
    Object? toSend = null,
    Object? confirmDate = freezed,
    Object? winner = freezed,
    Object? createdBy = freezed,
    Object? id = freezed,
    Object? participants = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Raffle(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
      cep: null == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
      toRaffle: null == toRaffle
          ? _value.toRaffle
          : toRaffle // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toSend: null == toSend
          ? _value.toSend
          : toSend // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmDate: freezed == confirmDate
          ? _value.confirmDate
          : confirmDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as User?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<User>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Raffle implements _Raffle {
  const _$_Raffle(
      {this.book,
      required this.cep,
      required this.toRaffle,
      required this.createdAt,
      required this.toSend,
      this.confirmDate,
      this.winner,
      this.createdBy,
      this.id,
      required final List<User> participants,
      this.updatedAt})
      : _participants = participants;

  @override
  final Book? book;
  @override
  final String cep;
  @override
  final DateTime toRaffle;
  @override
  final DateTime createdAt;
  @override
  final bool toSend;
  @override
  final DateTime? confirmDate;
  @override
  final User? winner;
  @override
  final User? createdBy;
  @override
  final String? id;
  final List<User> _participants;
  @override
  List<User> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Raffle(book: $book, cep: $cep, toRaffle: $toRaffle, createdAt: $createdAt, toSend: $toSend, confirmDate: $confirmDate, winner: $winner, createdBy: $createdBy, id: $id, participants: $participants, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Raffle &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.cep, cep) || other.cep == cep) &&
            (identical(other.toRaffle, toRaffle) ||
                other.toRaffle == toRaffle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.toSend, toSend) || other.toSend == toSend) &&
            (identical(other.confirmDate, confirmDate) ||
                other.confirmDate == confirmDate) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      book,
      cep,
      toRaffle,
      createdAt,
      toSend,
      confirmDate,
      winner,
      createdBy,
      id,
      const DeepCollectionEquality().hash(_participants),
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RaffleCopyWith<_$_Raffle> get copyWith =>
      __$$_RaffleCopyWithImpl<_$_Raffle>(this, _$identity);
}

abstract class _Raffle implements Raffle {
  const factory _Raffle(
      {final Book? book,
      required final String cep,
      required final DateTime toRaffle,
      required final DateTime createdAt,
      required final bool toSend,
      final DateTime? confirmDate,
      final User? winner,
      final User? createdBy,
      final String? id,
      required final List<User> participants,
      final DateTime? updatedAt}) = _$_Raffle;

  @override
  Book? get book;
  @override
  String get cep;
  @override
  DateTime get toRaffle;
  @override
  DateTime get createdAt;
  @override
  bool get toSend;
  @override
  DateTime? get confirmDate;
  @override
  User? get winner;
  @override
  User? get createdBy;
  @override
  String? get id;
  @override
  List<User> get participants;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RaffleCopyWith<_$_Raffle> get copyWith =>
      throw _privateConstructorUsedError;
}
