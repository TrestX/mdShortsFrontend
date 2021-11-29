// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  _ChangePassword changePassword(Email email, Password password) {
    return _ChangePassword(
      email,
      password,
    );
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email email, Password password) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Email email, Password password)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email email, Password password)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
  $Res call({Email email, Password password});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  @override
  $Res call({Email email, Password password});
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_ChangePassword(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.email, this.password);

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SettingsEvent.changePassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePassword &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email email, Password password) changePassword,
  }) {
    return changePassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Email email, Password password)? changePassword,
  }) {
    return changePassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email email, Password password)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements SettingsEvent {
  const factory _ChangePassword(Email email, Password password) =
      _$_ChangePassword;

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {required bool showErrorMessages,
      required Option<Either<SettingsFailure, Settings>>
          settingsFailureOrSuccessOption}) {
    return _SettingsState(
      showErrorMessages: showErrorMessages,
      settingsFailureOrSuccessOption: settingsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<SettingsFailure, Settings>>
      get settingsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      Option<Either<SettingsFailure, Settings>>
          settingsFailureOrSuccessOption});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? settingsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsFailureOrSuccessOption: settingsFailureOrSuccessOption == freezed
          ? _value.settingsFailureOrSuccessOption
          : settingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SettingsFailure, Settings>>,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      Option<Either<SettingsFailure, Settings>>
          settingsFailureOrSuccessOption});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? settingsFailureOrSuccessOption = freezed,
  }) {
    return _then(_SettingsState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsFailureOrSuccessOption: settingsFailureOrSuccessOption == freezed
          ? _value.settingsFailureOrSuccessOption
          : settingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SettingsFailure, Settings>>,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.showErrorMessages,
      required this.settingsFailureOrSuccessOption});

  @override
  final bool showErrorMessages;
  @override
  final Option<Either<SettingsFailure, Settings>>
      settingsFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsState(showErrorMessages: $showErrorMessages, settingsFailureOrSuccessOption: $settingsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.settingsFailureOrSuccessOption,
                    settingsFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.settingsFailureOrSuccessOption,
                    settingsFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(settingsFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required bool showErrorMessages,
      required Option<Either<SettingsFailure, Settings>>
          settingsFailureOrSuccessOption}) = _$_SettingsState;

  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<SettingsFailure, Settings>>
      get settingsFailureOrSuccessOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
