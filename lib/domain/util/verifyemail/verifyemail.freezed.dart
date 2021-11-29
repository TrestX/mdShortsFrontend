// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verifyemail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyEmailMsgTearOff {
  const _$VerifyEmailMsgTearOff();

  _VerifyEmailMsg call({required String message}) {
    return _VerifyEmailMsg(
      message: message,
    );
  }
}

/// @nodoc
const $VerifyEmailMsg = _$VerifyEmailMsgTearOff();

/// @nodoc
mixin _$VerifyEmailMsg {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyEmailMsgCopyWith<VerifyEmailMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailMsgCopyWith<$Res> {
  factory $VerifyEmailMsgCopyWith(
          VerifyEmailMsg value, $Res Function(VerifyEmailMsg) then) =
      _$VerifyEmailMsgCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$VerifyEmailMsgCopyWithImpl<$Res>
    implements $VerifyEmailMsgCopyWith<$Res> {
  _$VerifyEmailMsgCopyWithImpl(this._value, this._then);

  final VerifyEmailMsg _value;
  // ignore: unused_field
  final $Res Function(VerifyEmailMsg) _then;

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
abstract class _$VerifyEmailMsgCopyWith<$Res>
    implements $VerifyEmailMsgCopyWith<$Res> {
  factory _$VerifyEmailMsgCopyWith(
          _VerifyEmailMsg value, $Res Function(_VerifyEmailMsg) then) =
      __$VerifyEmailMsgCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$VerifyEmailMsgCopyWithImpl<$Res>
    extends _$VerifyEmailMsgCopyWithImpl<$Res>
    implements _$VerifyEmailMsgCopyWith<$Res> {
  __$VerifyEmailMsgCopyWithImpl(
      _VerifyEmailMsg _value, $Res Function(_VerifyEmailMsg) _then)
      : super(_value, (v) => _then(v as _VerifyEmailMsg));

  @override
  _VerifyEmailMsg get _value => super._value as _VerifyEmailMsg;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_VerifyEmailMsg(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyEmailMsg implements _VerifyEmailMsg {
  const _$_VerifyEmailMsg({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VerifyEmailMsg(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyEmailMsg &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailMsgCopyWith<_VerifyEmailMsg> get copyWith =>
      __$VerifyEmailMsgCopyWithImpl<_VerifyEmailMsg>(this, _$identity);
}

abstract class _VerifyEmailMsg implements VerifyEmailMsg {
  const factory _VerifyEmailMsg({required String message}) = _$_VerifyEmailMsg;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyEmailMsgCopyWith<_VerifyEmailMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
