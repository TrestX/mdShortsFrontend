// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OtpEventTearOff {
  const _$OtpEventTearOff();

  _ChangeOtp changeOtp(String otp) {
    return _ChangeOtp(
      otp,
    );
  }
}

/// @nodoc
const $OtpEvent = _$OtpEventTearOff();

/// @nodoc
mixin _$OtpEvent {
  String get otp => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) changeOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? changeOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? changeOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeOtp value) changeOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeOtp value)? changeOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeOtp value)? changeOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpEventCopyWith<OtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res> implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

  final OtpEvent _value;
  // ignore: unused_field
  final $Res Function(OtpEvent) _then;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChangeOtpCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$ChangeOtpCopyWith(
          _ChangeOtp value, $Res Function(_ChangeOtp) then) =
      __$ChangeOtpCopyWithImpl<$Res>;
  @override
  $Res call({String otp});
}

/// @nodoc
class __$ChangeOtpCopyWithImpl<$Res> extends _$OtpEventCopyWithImpl<$Res>
    implements _$ChangeOtpCopyWith<$Res> {
  __$ChangeOtpCopyWithImpl(_ChangeOtp _value, $Res Function(_ChangeOtp) _then)
      : super(_value, (v) => _then(v as _ChangeOtp));

  @override
  _ChangeOtp get _value => super._value as _ChangeOtp;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_ChangeOtp(
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeOtp implements _ChangeOtp {
  const _$_ChangeOtp(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'OtpEvent.changeOtp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeOtp &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otp);

  @JsonKey(ignore: true)
  @override
  _$ChangeOtpCopyWith<_ChangeOtp> get copyWith =>
      __$ChangeOtpCopyWithImpl<_ChangeOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) changeOtp,
  }) {
    return changeOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? changeOtp,
  }) {
    return changeOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? changeOtp,
    required TResult orElse(),
  }) {
    if (changeOtp != null) {
      return changeOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeOtp value) changeOtp,
  }) {
    return changeOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeOtp value)? changeOtp,
  }) {
    return changeOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeOtp value)? changeOtp,
    required TResult orElse(),
  }) {
    if (changeOtp != null) {
      return changeOtp(this);
    }
    return orElse();
  }
}

abstract class _ChangeOtp implements OtpEvent {
  const factory _ChangeOtp(String otp) = _$_ChangeOtp;

  @override
  String get otp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangeOtpCopyWith<_ChangeOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OtpStateTearOff {
  const _$OtpStateTearOff();

  _OtpStateState call({required String otp}) {
    return _OtpStateState(
      otp: otp,
    );
  }
}

/// @nodoc
const $OtpState = _$OtpStateTearOff();

/// @nodoc
mixin _$OtpState {
  String get otp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpStateCopyWith<OtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res> implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  final OtpState _value;
  // ignore: unused_field
  final $Res Function(OtpState) _then;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OtpStateStateCopyWith<$Res>
    implements $OtpStateCopyWith<$Res> {
  factory _$OtpStateStateCopyWith(
          _OtpStateState value, $Res Function(_OtpStateState) then) =
      __$OtpStateStateCopyWithImpl<$Res>;
  @override
  $Res call({String otp});
}

/// @nodoc
class __$OtpStateStateCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res>
    implements _$OtpStateStateCopyWith<$Res> {
  __$OtpStateStateCopyWithImpl(
      _OtpStateState _value, $Res Function(_OtpStateState) _then)
      : super(_value, (v) => _then(v as _OtpStateState));

  @override
  _OtpStateState get _value => super._value as _OtpStateState;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_OtpStateState(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpStateState implements _OtpStateState {
  const _$_OtpStateState({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'OtpState(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtpStateState &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otp);

  @JsonKey(ignore: true)
  @override
  _$OtpStateStateCopyWith<_OtpStateState> get copyWith =>
      __$OtpStateStateCopyWithImpl<_OtpStateState>(this, _$identity);
}

abstract class _OtpStateState implements OtpState {
  const factory _OtpStateState({required String otp}) = _$_OtpStateState;

  @override
  String get otp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OtpStateStateCopyWith<_OtpStateState> get copyWith =>
      throw _privateConstructorUsedError;
}
