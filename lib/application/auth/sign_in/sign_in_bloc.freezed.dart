// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  LoginWithUserNamePassword loginWithUserNamePassword() {
    return const LoginWithUserNamePassword();
  }

  ChangeEmail changeEmail(String emailStr) {
    return ChangeEmail(
      emailStr,
    );
  }

  ChangePassword changePassword(String passwordStr) {
    return ChangePassword(
      passwordStr,
    );
  }

  RememberMe rememberMe(bool? value) {
    return RememberMe(
      value,
    );
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithUserNamePassword,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function(bool? value) rememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithUserNamePassword value)
        loginWithUserNamePassword,
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(RememberMe value) rememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class $LoginWithUserNamePasswordCopyWith<$Res> {
  factory $LoginWithUserNamePasswordCopyWith(LoginWithUserNamePassword value,
          $Res Function(LoginWithUserNamePassword) then) =
      _$LoginWithUserNamePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWithUserNamePasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $LoginWithUserNamePasswordCopyWith<$Res> {
  _$LoginWithUserNamePasswordCopyWithImpl(LoginWithUserNamePassword _value,
      $Res Function(LoginWithUserNamePassword) _then)
      : super(_value, (v) => _then(v as LoginWithUserNamePassword));

  @override
  LoginWithUserNamePassword get _value =>
      super._value as LoginWithUserNamePassword;
}

/// @nodoc

class _$LoginWithUserNamePassword implements LoginWithUserNamePassword {
  const _$LoginWithUserNamePassword();

  @override
  String toString() {
    return 'SignInEvent.loginWithUserNamePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginWithUserNamePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithUserNamePassword,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function(bool? value) rememberMe,
  }) {
    return loginWithUserNamePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
  }) {
    return loginWithUserNamePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
    required TResult orElse(),
  }) {
    if (loginWithUserNamePassword != null) {
      return loginWithUserNamePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithUserNamePassword value)
        loginWithUserNamePassword,
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(RememberMe value) rememberMe,
  }) {
    return loginWithUserNamePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
  }) {
    return loginWithUserNamePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
    required TResult orElse(),
  }) {
    if (loginWithUserNamePassword != null) {
      return loginWithUserNamePassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithUserNamePassword implements SignInEvent {
  const factory LoginWithUserNamePassword() = _$LoginWithUserNamePassword;
}

/// @nodoc
abstract class $ChangeEmailCopyWith<$Res> {
  factory $ChangeEmailCopyWith(
          ChangeEmail value, $Res Function(ChangeEmail) then) =
      _$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$ChangeEmailCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $ChangeEmailCopyWith<$Res> {
  _$ChangeEmailCopyWithImpl(
      ChangeEmail _value, $Res Function(ChangeEmail) _then)
      : super(_value, (v) => _then(v as ChangeEmail));

  @override
  ChangeEmail get _value => super._value as ChangeEmail;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(ChangeEmail(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeEmail implements ChangeEmail {
  const _$ChangeEmail(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInEvent.changeEmail(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeEmail &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $ChangeEmailCopyWith<ChangeEmail> get copyWith =>
      _$ChangeEmailCopyWithImpl<ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithUserNamePassword,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function(bool? value) rememberMe,
  }) {
    return changeEmail(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
  }) {
    return changeEmail?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithUserNamePassword value)
        loginWithUserNamePassword,
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(RememberMe value) rememberMe,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class ChangeEmail implements SignInEvent {
  const factory ChangeEmail(String emailStr) = _$ChangeEmail;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeEmailCopyWith<ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordCopyWith<$Res> {
  factory $ChangePasswordCopyWith(
          ChangePassword value, $Res Function(ChangePassword) then) =
      _$ChangePasswordCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$ChangePasswordCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $ChangePasswordCopyWith<$Res> {
  _$ChangePasswordCopyWithImpl(
      ChangePassword _value, $Res Function(ChangePassword) _then)
      : super(_value, (v) => _then(v as ChangePassword));

  @override
  ChangePassword get _value => super._value as ChangePassword;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(ChangePassword(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePassword implements ChangePassword {
  const _$ChangePassword(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInEvent.changePassword(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePassword &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $ChangePasswordCopyWith<ChangePassword> get copyWith =>
      _$ChangePasswordCopyWithImpl<ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithUserNamePassword,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function(bool? value) rememberMe,
  }) {
    return changePassword(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
  }) {
    return changePassword?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithUserNamePassword value)
        loginWithUserNamePassword,
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(RememberMe value) rememberMe,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements SignInEvent {
  const factory ChangePassword(String passwordStr) = _$ChangePassword;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordCopyWith<ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RememberMeCopyWith<$Res> {
  factory $RememberMeCopyWith(
          RememberMe value, $Res Function(RememberMe) then) =
      _$RememberMeCopyWithImpl<$Res>;
  $Res call({bool? value});
}

/// @nodoc
class _$RememberMeCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $RememberMeCopyWith<$Res> {
  _$RememberMeCopyWithImpl(RememberMe _value, $Res Function(RememberMe) _then)
      : super(_value, (v) => _then(v as RememberMe));

  @override
  RememberMe get _value => super._value as RememberMe;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(RememberMe(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$RememberMe implements RememberMe {
  const _$RememberMe(this.value);

  @override
  final bool? value;

  @override
  String toString() {
    return 'SignInEvent.rememberMe(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RememberMe &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $RememberMeCopyWith<RememberMe> get copyWith =>
      _$RememberMeCopyWithImpl<RememberMe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithUserNamePassword,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function(bool? value) rememberMe,
  }) {
    return rememberMe(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
  }) {
    return rememberMe?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithUserNamePassword,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function(bool? value)? rememberMe,
    required TResult orElse(),
  }) {
    if (rememberMe != null) {
      return rememberMe(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithUserNamePassword value)
        loginWithUserNamePassword,
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(RememberMe value) rememberMe,
  }) {
    return rememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
  }) {
    return rememberMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithUserNamePassword value)?
        loginWithUserNamePassword,
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(RememberMe value)? rememberMe,
    required TResult orElse(),
  }) {
    if (rememberMe != null) {
      return rememberMe(this);
    }
    return orElse();
  }
}

abstract class RememberMe implements SignInEvent {
  const factory RememberMe(bool? value) = _$RememberMe;

  bool? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RememberMeCopyWith<RememberMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {required Email email,
      required Password password,
      required bool rememberMe,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInState(
      email: email,
      password: password,
      rememberMe: rememberMe,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      bool rememberMe,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      bool rememberMe,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.password,
      required this.rememberMe,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final Email email;
  @override
  final Password password;
  @override
  final bool rememberMe;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, rememberMe: $rememberMe, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.rememberMe, rememberMe) ||
                const DeepCollectionEquality()
                    .equals(other.rememberMe, rememberMe)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(rememberMe) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required Email email,
      required Password password,
      required bool rememberMe,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInState;

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get rememberMe => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
