// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Library {
  List<Book> get reads => throw _privateConstructorUsedError;
  List<Book> get toRead => throw _privateConstructorUsedError;
  List<Book> get exchangeds => throw _privateConstructorUsedError;
  List<Book> get donateds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryCopyWith<Library> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryCopyWith<$Res> {
  factory $LibraryCopyWith(Library value, $Res Function(Library) then) =
      _$LibraryCopyWithImpl<$Res, Library>;
  @useResult
  $Res call(
      {List<Book> reads,
      List<Book> toRead,
      List<Book> exchangeds,
      List<Book> donateds});
}

/// @nodoc
class _$LibraryCopyWithImpl<$Res, $Val extends Library>
    implements $LibraryCopyWith<$Res> {
  _$LibraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reads = null,
    Object? toRead = null,
    Object? exchangeds = null,
    Object? donateds = null,
  }) {
    return _then(_value.copyWith(
      reads: null == reads
          ? _value.reads
          : reads // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      toRead: null == toRead
          ? _value.toRead
          : toRead // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      exchangeds: null == exchangeds
          ? _value.exchangeds
          : exchangeds // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      donateds: null == donateds
          ? _value.donateds
          : donateds // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LibraryCopyWith<$Res> implements $LibraryCopyWith<$Res> {
  factory _$$_LibraryCopyWith(
          _$_Library value, $Res Function(_$_Library) then) =
      __$$_LibraryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Book> reads,
      List<Book> toRead,
      List<Book> exchangeds,
      List<Book> donateds});
}

/// @nodoc
class __$$_LibraryCopyWithImpl<$Res>
    extends _$LibraryCopyWithImpl<$Res, _$_Library>
    implements _$$_LibraryCopyWith<$Res> {
  __$$_LibraryCopyWithImpl(_$_Library _value, $Res Function(_$_Library) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reads = null,
    Object? toRead = null,
    Object? exchangeds = null,
    Object? donateds = null,
  }) {
    return _then(_$_Library(
      reads: null == reads
          ? _value._reads
          : reads // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      toRead: null == toRead
          ? _value._toRead
          : toRead // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      exchangeds: null == exchangeds
          ? _value._exchangeds
          : exchangeds // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      donateds: null == donateds
          ? _value._donateds
          : donateds // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_Library implements _Library {
  const _$_Library(
      {required final List<Book> reads,
      required final List<Book> toRead,
      required final List<Book> exchangeds,
      required final List<Book> donateds})
      : _reads = reads,
        _toRead = toRead,
        _exchangeds = exchangeds,
        _donateds = donateds;

  final List<Book> _reads;
  @override
  List<Book> get reads {
    if (_reads is EqualUnmodifiableListView) return _reads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reads);
  }

  final List<Book> _toRead;
  @override
  List<Book> get toRead {
    if (_toRead is EqualUnmodifiableListView) return _toRead;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toRead);
  }

  final List<Book> _exchangeds;
  @override
  List<Book> get exchangeds {
    if (_exchangeds is EqualUnmodifiableListView) return _exchangeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeds);
  }

  final List<Book> _donateds;
  @override
  List<Book> get donateds {
    if (_donateds is EqualUnmodifiableListView) return _donateds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donateds);
  }

  @override
  String toString() {
    return 'Library(reads: $reads, toRead: $toRead, exchangeds: $exchangeds, donateds: $donateds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Library &&
            const DeepCollectionEquality().equals(other._reads, _reads) &&
            const DeepCollectionEquality().equals(other._toRead, _toRead) &&
            const DeepCollectionEquality()
                .equals(other._exchangeds, _exchangeds) &&
            const DeepCollectionEquality().equals(other._donateds, _donateds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reads),
      const DeepCollectionEquality().hash(_toRead),
      const DeepCollectionEquality().hash(_exchangeds),
      const DeepCollectionEquality().hash(_donateds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LibraryCopyWith<_$_Library> get copyWith =>
      __$$_LibraryCopyWithImpl<_$_Library>(this, _$identity);
}

abstract class _Library implements Library {
  const factory _Library(
      {required final List<Book> reads,
      required final List<Book> toRead,
      required final List<Book> exchangeds,
      required final List<Book> donateds}) = _$_Library;

  @override
  List<Book> get reads;
  @override
  List<Book> get toRead;
  @override
  List<Book> get exchangeds;
  @override
  List<Book> get donateds;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryCopyWith<_$_Library> get copyWith =>
      throw _privateConstructorUsedError;
}
