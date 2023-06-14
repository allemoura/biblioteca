// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Book {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  DateTime get releaseDate => throw _privateConstructorUsedError;
  List<BookReview> get reviews => throw _privateConstructorUsedError;
  bool get toExchanged => throw _privateConstructorUsedError;
  String? get isbn10 => throw _privateConstructorUsedError;
  String? get isbn13 => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {String title,
      String author,
      DateTime releaseDate,
      List<BookReview> reviews,
      bool toExchanged,
      String? isbn10,
      String? isbn13,
      String? cover,
      String? id});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? releaseDate = null,
    Object? reviews = null,
    Object? toExchanged = null,
    Object? isbn10 = freezed,
    Object? isbn13 = freezed,
    Object? cover = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<BookReview>,
      toExchanged: null == toExchanged
          ? _value.toExchanged
          : toExchanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isbn10: freezed == isbn10
          ? _value.isbn10
          : isbn10 // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn13: freezed == isbn13
          ? _value.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String author,
      DateTime releaseDate,
      List<BookReview> reviews,
      bool toExchanged,
      String? isbn10,
      String? isbn13,
      String? cover,
      String? id});
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res, _$_Book>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? releaseDate = null,
    Object? reviews = null,
    Object? toExchanged = null,
    Object? isbn10 = freezed,
    Object? isbn13 = freezed,
    Object? cover = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Book(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<BookReview>,
      toExchanged: null == toExchanged
          ? _value.toExchanged
          : toExchanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isbn10: freezed == isbn10
          ? _value.isbn10
          : isbn10 // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn13: freezed == isbn13
          ? _value.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Book implements _Book {
  const _$_Book(
      {required this.title,
      required this.author,
      required this.releaseDate,
      required final List<BookReview> reviews,
      required this.toExchanged,
      this.isbn10,
      this.isbn13,
      this.cover,
      this.id})
      : _reviews = reviews;

  @override
  final String title;
  @override
  final String author;
  @override
  final DateTime releaseDate;
  final List<BookReview> _reviews;
  @override
  List<BookReview> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final bool toExchanged;
  @override
  final String? isbn10;
  @override
  final String? isbn13;
  @override
  final String? cover;
  @override
  final String? id;

  @override
  String toString() {
    return 'Book(title: $title, author: $author, releaseDate: $releaseDate, reviews: $reviews, toExchanged: $toExchanged, isbn10: $isbn10, isbn13: $isbn13, cover: $cover, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Book &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.toExchanged, toExchanged) ||
                other.toExchanged == toExchanged) &&
            (identical(other.isbn10, isbn10) || other.isbn10 == isbn10) &&
            (identical(other.isbn13, isbn13) || other.isbn13 == isbn13) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      author,
      releaseDate,
      const DeepCollectionEquality().hash(_reviews),
      toExchanged,
      isbn10,
      isbn13,
      cover,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);
}

abstract class _Book implements Book {
  const factory _Book(
      {required final String title,
      required final String author,
      required final DateTime releaseDate,
      required final List<BookReview> reviews,
      required final bool toExchanged,
      final String? isbn10,
      final String? isbn13,
      final String? cover,
      final String? id}) = _$_Book;

  @override
  String get title;
  @override
  String get author;
  @override
  DateTime get releaseDate;
  @override
  List<BookReview> get reviews;
  @override
  bool get toExchanged;
  @override
  String? get isbn10;
  @override
  String? get isbn13;
  @override
  String? get cover;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}
