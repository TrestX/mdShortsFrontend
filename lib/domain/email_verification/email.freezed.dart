// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailTearOff {
  const _$EmailTearOff();

  _Email call({required String message}) {
    return _Email(
      message: message,
    );
  }
}

/// @nodoc
const $Email = _$EmailTearOff();

/// @nodoc
mixin _$Email {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailCopyWith<Email> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailCopyWith<$Res> {
  factory $EmailCopyWith(Email value, $Res Function(Email) then) =
      _$EmailCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$EmailCopyWithImpl<$Res> implements $EmailCopyWith<$Res> {
  _$EmailCopyWithImpl(this._value, this._then);

  final Email _value;
  // ignore: unused_field
  final $Res Function(Email) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmailCopyWith<$Res> implements $EmailCopyWith<$Res> {
  factory _$EmailCopyWith(_Email value, $Res Function(_Email) then) =
      __$EmailCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$EmailCopyWithImpl<$Res> extends _$EmailCopyWithImpl<$Res>
    implements _$EmailCopyWith<$Res> {
  __$EmailCopyWithImpl(_Email _value, $Res Function(_Email) _then)
      : super(_value, (v) => _then(v as _Email));

  @override
  _Email get _value => super._value as _Email;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Email(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Email implements _Email {
  const _$_Email({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Email(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Email &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$EmailCopyWith<_Email> get copyWith =>
      __$EmailCopyWithImpl<_Email>(this, _$identity);
}

abstract class _Email implements Email {
  const factory _Email({required String message}) = _$_Email;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailCopyWith<_Email> get copyWith => throw _privateConstructorUsedError;
}
