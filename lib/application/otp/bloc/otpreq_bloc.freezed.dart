// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otpreq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OtpreqEventTearOff {
  const _$OtpreqEventTearOff();

  _VerifyOtp verifyOtp(String otp) {
    return _VerifyOtp(
      otp,
    );
  }

  _ResendOtp resendOtp() {
    return const _ResendOtp();
  }
}

/// @nodoc
const $OtpreqEvent = _$OtpreqEventTearOff();

/// @nodoc
mixin _$OtpreqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) verifyOtp,
    required TResult Function() resendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? verifyOtp,
    TResult Function()? resendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? verifyOtp,
    TResult Function()? resendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_ResendOtp value) resendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_ResendOtp value)? resendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpreqEventCopyWith<$Res> {
  factory $OtpreqEventCopyWith(
          OtpreqEvent value, $Res Function(OtpreqEvent) then) =
      _$OtpreqEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtpreqEventCopyWithImpl<$Res> implements $OtpreqEventCopyWith<$Res> {
  _$OtpreqEventCopyWithImpl(this._value, this._then);

  final OtpreqEvent _value;
  // ignore: unused_field
  final $Res Function(OtpreqEvent) _then;
}

/// @nodoc
abstract class _$VerifyOtpCopyWith<$Res> {
  factory _$VerifyOtpCopyWith(
          _VerifyOtp value, $Res Function(_VerifyOtp) then) =
      __$VerifyOtpCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$VerifyOtpCopyWithImpl<$Res> extends _$OtpreqEventCopyWithImpl<$Res>
    implements _$VerifyOtpCopyWith<$Res> {
  __$VerifyOtpCopyWithImpl(_VerifyOtp _value, $Res Function(_VerifyOtp) _then)
      : super(_value, (v) => _then(v as _VerifyOtp));

  @override
  _VerifyOtp get _value => super._value as _VerifyOtp;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_VerifyOtp(
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyOtp implements _VerifyOtp {
  const _$_VerifyOtp(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'OtpreqEvent.verifyOtp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyOtp &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otp);

  @JsonKey(ignore: true)
  @override
  _$VerifyOtpCopyWith<_VerifyOtp> get copyWith =>
      __$VerifyOtpCopyWithImpl<_VerifyOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) verifyOtp,
    required TResult Function() resendOtp,
  }) {
    return verifyOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? verifyOtp,
    TResult Function()? resendOtp,
  }) {
    return verifyOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? verifyOtp,
    TResult Function()? resendOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_ResendOtp value) resendOtp,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_ResendOtp value)? resendOtp,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements OtpreqEvent {
  const factory _VerifyOtp(String otp) = _$_VerifyOtp;

  String get otp => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerifyOtpCopyWith<_VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResendOtpCopyWith<$Res> {
  factory _$ResendOtpCopyWith(
          _ResendOtp value, $Res Function(_ResendOtp) then) =
      __$ResendOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResendOtpCopyWithImpl<$Res> extends _$OtpreqEventCopyWithImpl<$Res>
    implements _$ResendOtpCopyWith<$Res> {
  __$ResendOtpCopyWithImpl(_ResendOtp _value, $Res Function(_ResendOtp) _then)
      : super(_value, (v) => _then(v as _ResendOtp));

  @override
  _ResendOtp get _value => super._value as _ResendOtp;
}

/// @nodoc

class _$_ResendOtp implements _ResendOtp {
  const _$_ResendOtp();

  @override
  String toString() {
    return 'OtpreqEvent.resendOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResendOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) verifyOtp,
    required TResult Function() resendOtp,
  }) {
    return resendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? verifyOtp,
    TResult Function()? resendOtp,
  }) {
    return resendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? verifyOtp,
    TResult Function()? resendOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_ResendOtp value) resendOtp,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_ResendOtp value)? resendOtp,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements OtpreqEvent {
  const factory _ResendOtp() = _$_ResendOtp;
}

/// @nodoc
class _$OtpreqStateTearOff {
  const _$OtpreqStateTearOff();

  _OtpreqState call(
      {required Option<Either<OtpFailure, Otp>> otpFailureOrSuccessOption}) {
    return _OtpreqState(
      otpFailureOrSuccessOption: otpFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $OtpreqState = _$OtpreqStateTearOff();

/// @nodoc
mixin _$OtpreqState {
  Option<Either<OtpFailure, Otp>> get otpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpreqStateCopyWith<OtpreqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpreqStateCopyWith<$Res> {
  factory $OtpreqStateCopyWith(
          OtpreqState value, $Res Function(OtpreqState) then) =
      _$OtpreqStateCopyWithImpl<$Res>;
  $Res call({Option<Either<OtpFailure, Otp>> otpFailureOrSuccessOption});
}

/// @nodoc
class _$OtpreqStateCopyWithImpl<$Res> implements $OtpreqStateCopyWith<$Res> {
  _$OtpreqStateCopyWithImpl(this._value, this._then);

  final OtpreqState _value;
  // ignore: unused_field
  final $Res Function(OtpreqState) _then;

  @override
  $Res call({
    Object? otpFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OtpFailure, Otp>>,
    ));
  }
}

/// @nodoc
abstract class _$OtpreqStateCopyWith<$Res>
    implements $OtpreqStateCopyWith<$Res> {
  factory _$OtpreqStateCopyWith(
          _OtpreqState value, $Res Function(_OtpreqState) then) =
      __$OtpreqStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<OtpFailure, Otp>> otpFailureOrSuccessOption});
}

/// @nodoc
class __$OtpreqStateCopyWithImpl<$Res> extends _$OtpreqStateCopyWithImpl<$Res>
    implements _$OtpreqStateCopyWith<$Res> {
  __$OtpreqStateCopyWithImpl(
      _OtpreqState _value, $Res Function(_OtpreqState) _then)
      : super(_value, (v) => _then(v as _OtpreqState));

  @override
  _OtpreqState get _value => super._value as _OtpreqState;

  @override
  $Res call({
    Object? otpFailureOrSuccessOption = freezed,
  }) {
    return _then(_OtpreqState(
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OtpFailure, Otp>>,
    ));
  }
}

/// @nodoc

class _$_OtpreqState implements _OtpreqState {
  const _$_OtpreqState({required this.otpFailureOrSuccessOption});

  @override
  final Option<Either<OtpFailure, Otp>> otpFailureOrSuccessOption;

  @override
  String toString() {
    return 'OtpreqState(otpFailureOrSuccessOption: $otpFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtpreqState &&
            (identical(other.otpFailureOrSuccessOption,
                    otpFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.otpFailureOrSuccessOption,
                    otpFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(otpFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$OtpreqStateCopyWith<_OtpreqState> get copyWith =>
      __$OtpreqStateCopyWithImpl<_OtpreqState>(this, _$identity);
}

abstract class _OtpreqState implements OtpreqState {
  const factory _OtpreqState(
      {required Option<Either<OtpFailure, Otp>>
          otpFailureOrSuccessOption}) = _$_OtpreqState;

  @override
  Option<Either<OtpFailure, Otp>> get otpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OtpreqStateCopyWith<_OtpreqState> get copyWith =>
      throw _privateConstructorUsedError;
}
