// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Library? get library => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get imageProfile => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String name,
      String email,
      Library? library,
      String? password,
      String? imageProfile,
      String? id});

  $LibraryCopyWith<$Res>? get library;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? library = freezed,
    Object? password = freezed,
    Object? imageProfile = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      library: freezed == library
          ? _value.library
          : library // ignore: cast_nullable_to_non_nullable
              as Library?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      imageProfile: freezed == imageProfile
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LibraryCopyWith<$Res>? get library {
    if (_value.library == null) {
      return null;
    }

    return $LibraryCopyWith<$Res>(_value.library!, (value) {
      return _then(_value.copyWith(library: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      Library? library,
      String? password,
      String? imageProfile,
      String? id});

  @override
  $LibraryCopyWith<$Res>? get library;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? library = freezed,
    Object? password = freezed,
    Object? imageProfile = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_User(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      library: freezed == library
          ? _value.library
          : library // ignore: cast_nullable_to_non_nullable
              as Library?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      imageProfile: freezed == imageProfile
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.name,
      required this.email,
      this.library,
      this.password,
      this.imageProfile,
      this.id});

  @override
  final String name;
  @override
  final String email;
  @override
  final Library? library;
  @override
  final String? password;
  @override
  final String? imageProfile;
  @override
  final String? id;

  @override
  String toString() {
    return 'User(name: $name, email: $email, library: $library, password: $password, imageProfile: $imageProfile, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.library, library) || other.library == library) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.imageProfile, imageProfile) ||
                other.imageProfile == imageProfile) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, library, password, imageProfile, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String name,
      required final String email,
      final Library? library,
      final String? password,
      final String? imageProfile,
      final String? id}) = _$_User;

  @override
  String get name;
  @override
  String get email;
  @override
  Library? get library;
  @override
  String? get password;
  @override
  String? get imageProfile;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
