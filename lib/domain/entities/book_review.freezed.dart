// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookReview {
  User get author => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookReviewCopyWith<BookReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookReviewCopyWith<$Res> {
  factory $BookReviewCopyWith(
          BookReview value, $Res Function(BookReview) then) =
      _$BookReviewCopyWithImpl<$Res, BookReview>;
  @useResult
  $Res call(
      {User author,
      double stars,
      DateTime createdAt,
      DateTime? updatedAt,
      String? review});

  $UserCopyWith<$Res> get author;
}

/// @nodoc
class _$BookReviewCopyWithImpl<$Res, $Val extends BookReview>
    implements $BookReviewCopyWith<$Res> {
  _$BookReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? stars = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? review = freezed,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookReviewCopyWith<$Res>
    implements $BookReviewCopyWith<$Res> {
  factory _$$_BookReviewCopyWith(
          _$_BookReview value, $Res Function(_$_BookReview) then) =
      __$$_BookReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User author,
      double stars,
      DateTime createdAt,
      DateTime? updatedAt,
      String? review});

  @override
  $UserCopyWith<$Res> get author;
}

/// @nodoc
class __$$_BookReviewCopyWithImpl<$Res>
    extends _$BookReviewCopyWithImpl<$Res, _$_BookReview>
    implements _$$_BookReviewCopyWith<$Res> {
  __$$_BookReviewCopyWithImpl(
      _$_BookReview _value, $Res Function(_$_BookReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? stars = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? review = freezed,
  }) {
    return _then(_$_BookReview(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BookReview implements _BookReview {
  const _$_BookReview(
      {required this.author,
      required this.stars,
      required this.createdAt,
      this.updatedAt,
      this.review});

  @override
  final User author;
  @override
  final double stars;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? review;

  @override
  String toString() {
    return 'BookReview(author: $author, stars: $stars, createdAt: $createdAt, updatedAt: $updatedAt, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookReview &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, author, stars, createdAt, updatedAt, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookReviewCopyWith<_$_BookReview> get copyWith =>
      __$$_BookReviewCopyWithImpl<_$_BookReview>(this, _$identity);
}

abstract class _BookReview implements BookReview {
  const factory _BookReview(
      {required final User author,
      required final double stars,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final String? review}) = _$_BookReview;

  @override
  User get author;
  @override
  double get stars;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get review;
  @override
  @JsonKey(ignore: true)
  _$$_BookReviewCopyWith<_$_BookReview> get copyWith =>
      throw _privateConstructorUsedError;
}
