// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorBook {
  String get name => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorBookCopyWith<AuthorBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorBookCopyWith<$Res> {
  factory $AuthorBookCopyWith(
          AuthorBook value, $Res Function(AuthorBook) then) =
      _$AuthorBookCopyWithImpl<$Res, AuthorBook>;
  @useResult
  $Res call({String name, List<Book> books, String? imageUrl});
}

/// @nodoc
class _$AuthorBookCopyWithImpl<$Res, $Val extends AuthorBook>
    implements $AuthorBookCopyWith<$Res> {
  _$AuthorBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? books = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorBookCopyWith<$Res>
    implements $AuthorBookCopyWith<$Res> {
  factory _$$_AuthorBookCopyWith(
          _$_AuthorBook value, $Res Function(_$_AuthorBook) then) =
      __$$_AuthorBookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Book> books, String? imageUrl});
}

/// @nodoc
class __$$_AuthorBookCopyWithImpl<$Res>
    extends _$AuthorBookCopyWithImpl<$Res, _$_AuthorBook>
    implements _$$_AuthorBookCopyWith<$Res> {
  __$$_AuthorBookCopyWithImpl(
      _$_AuthorBook _value, $Res Function(_$_AuthorBook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? books = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_AuthorBook(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthorBook implements _AuthorBook {
  const _$_AuthorBook(
      {required this.name, required final List<Book> books, this.imageUrl})
      : _books = books;

  @override
  final String name;
  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'AuthorBook(name: $name, books: $books, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorBook &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_books), imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorBookCopyWith<_$_AuthorBook> get copyWith =>
      __$$_AuthorBookCopyWithImpl<_$_AuthorBook>(this, _$identity);
}

abstract class _AuthorBook implements AuthorBook {
  const factory _AuthorBook(
      {required final String name,
      required final List<Book> books,
      final String? imageUrl}) = _$_AuthorBook;

  @override
  String get name;
  @override
  List<Book> get books;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorBookCopyWith<_$_AuthorBook> get copyWith =>
      throw _privateConstructorUsedError;
}
