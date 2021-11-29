// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emailverification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailverificationEventTearOff {
  const _$EmailverificationEventTearOff();

  _VerifyEmail verifyEmail(String email) {
    return _VerifyEmail(
      email,
    );
  }
}

/// @nodoc
const $EmailverificationEvent = _$EmailverificationEventTearOff();

/// @nodoc
mixin _$EmailverificationEvent {
  String get email => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyEmail value) verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyEmail value)? verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyEmail value)? verifyEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailverificationEventCopyWith<EmailverificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailverificationEventCopyWith<$Res> {
  factory $EmailverificationEventCopyWith(EmailverificationEvent value,
          $Res Function(EmailverificationEvent) then) =
      _$EmailverificationEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailverificationEventCopyWithImpl<$Res>
    implements $EmailverificationEventCopyWith<$Res> {
  _$EmailverificationEventCopyWithImpl(this._value, this._then);

  final EmailverificationEvent _value;
  // ignore: unused_field
  final $Res Function(EmailverificationEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VerifyEmailCopyWith<$Res>
    implements $EmailverificationEventCopyWith<$Res> {
  factory _$VerifyEmailCopyWith(
          _VerifyEmail value, $Res Function(_VerifyEmail) then) =
      __$VerifyEmailCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$VerifyEmailCopyWithImpl<$Res>
    extends _$EmailverificationEventCopyWithImpl<$Res>
    implements _$VerifyEmailCopyWith<$Res> {
  __$VerifyEmailCopyWithImpl(
      _VerifyEmail _value, $Res Function(_VerifyEmail) _then)
      : super(_value, (v) => _then(v as _VerifyEmail));

  @override
  _VerifyEmail get _value => super._value as _VerifyEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_VerifyEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyEmail implements _VerifyEmail {
  const _$_VerifyEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailverificationEvent.verifyEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      __$VerifyEmailCopyWithImpl<_VerifyEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
  }) {
    return verifyEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
  }) {
    return verifyEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyEmail value) verifyEmail,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyEmail value)? verifyEmail,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyEmail value)? verifyEmail,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmail implements EmailverificationEvent {
  const factory _VerifyEmail(String email) = _$_VerifyEmail;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EmailverificationStateTearOff {
  const _$EmailverificationStateTearOff();

  _EmailverificationState call(
      {required Option<Either<EmailFailure, Email>>
          emailVerificationFailureOrSuccessOption}) {
    return _EmailverificationState(
      emailVerificationFailureOrSuccessOption:
          emailVerificationFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $EmailverificationState = _$EmailverificationStateTearOff();

/// @nodoc
mixin _$EmailverificationState {
  Option<Either<EmailFailure, Email>>
      get emailVerificationFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailverificationStateCopyWith<EmailverificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailverificationStateCopyWith<$Res> {
  factory $EmailverificationStateCopyWith(EmailverificationState value,
          $Res Function(EmailverificationState) then) =
      _$EmailverificationStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<EmailFailure, Email>>
          emailVerificationFailureOrSuccessOption});
}

/// @nodoc
class _$EmailverificationStateCopyWithImpl<$Res>
    implements $EmailverificationStateCopyWith<$Res> {
  _$EmailverificationStateCopyWithImpl(this._value, this._then);

  final EmailverificationState _value;
  // ignore: unused_field
  final $Res Function(EmailverificationState) _then;

  @override
  $Res call({
    Object? emailVerificationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailVerificationFailureOrSuccessOption:
          emailVerificationFailureOrSuccessOption == freezed
              ? _value.emailVerificationFailureOrSuccessOption
              : emailVerificationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<EmailFailure, Email>>,
    ));
  }
}

/// @nodoc
abstract class _$EmailverificationStateCopyWith<$Res>
    implements $EmailverificationStateCopyWith<$Res> {
  factory _$EmailverificationStateCopyWith(_EmailverificationState value,
          $Res Function(_EmailverificationState) then) =
      __$EmailverificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<EmailFailure, Email>>
          emailVerificationFailureOrSuccessOption});
}

/// @nodoc
class __$EmailverificationStateCopyWithImpl<$Res>
    extends _$EmailverificationStateCopyWithImpl<$Res>
    implements _$EmailverificationStateCopyWith<$Res> {
  __$EmailverificationStateCopyWithImpl(_EmailverificationState _value,
      $Res Function(_EmailverificationState) _then)
      : super(_value, (v) => _then(v as _EmailverificationState));

  @override
  _EmailverificationState get _value => super._value as _EmailverificationState;

  @override
  $Res call({
    Object? emailVerificationFailureOrSuccessOption = freezed,
  }) {
    return _then(_EmailverificationState(
      emailVerificationFailureOrSuccessOption:
          emailVerificationFailureOrSuccessOption == freezed
              ? _value.emailVerificationFailureOrSuccessOption
              : emailVerificationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<EmailFailure, Email>>,
    ));
  }
}

/// @nodoc

class _$_EmailverificationState implements _EmailverificationState {
  const _$_EmailverificationState(
      {required this.emailVerificationFailureOrSuccessOption});

  @override
  final Option<Either<EmailFailure, Email>>
      emailVerificationFailureOrSuccessOption;

  @override
  String toString() {
    return 'EmailverificationState(emailVerificationFailureOrSuccessOption: $emailVerificationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailverificationState &&
            (identical(other.emailVerificationFailureOrSuccessOption,
                    emailVerificationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.emailVerificationFailureOrSuccessOption,
                    emailVerificationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(emailVerificationFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$EmailverificationStateCopyWith<_EmailverificationState> get copyWith =>
      __$EmailverificationStateCopyWithImpl<_EmailverificationState>(
          this, _$identity);
}

abstract class _EmailverificationState implements EmailverificationState {
  const factory _EmailverificationState(
      {required Option<Either<EmailFailure, Email>>
          emailVerificationFailureOrSuccessOption}) = _$_EmailverificationState;

  @override
  Option<Either<EmailFailure, Email>>
      get emailVerificationFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailverificationStateCopyWith<_EmailverificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
