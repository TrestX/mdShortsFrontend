// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'changepassword_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangepasswordEventTearOff {
  const _$ChangepasswordEventTearOff();

  _ChangeEemail changeEemail(String emailStr) {
    return _ChangeEemail(
      emailStr,
    );
  }

  _ChangePpassword changePpassword(String passwordStr) {
    return _ChangePpassword(
      passwordStr,
    );
  }
}

/// @nodoc
const $ChangepasswordEvent = _$ChangepasswordEventTearOff();

/// @nodoc
mixin _$ChangepasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEemail,
    required TResult Function(String passwordStr) changePpassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? changeEemail,
    TResult Function(String passwordStr)? changePpassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEemail,
    TResult Function(String passwordStr)? changePpassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEemail value) changeEemail,
    required TResult Function(_ChangePpassword value) changePpassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeEemail value)? changeEemail,
    TResult Function(_ChangePpassword value)? changePpassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEemail value)? changeEemail,
    TResult Function(_ChangePpassword value)? changePpassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangepasswordEventCopyWith<$Res> {
  factory $ChangepasswordEventCopyWith(
          ChangepasswordEvent value, $Res Function(ChangepasswordEvent) then) =
      _$ChangepasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangepasswordEventCopyWithImpl<$Res>
    implements $ChangepasswordEventCopyWith<$Res> {
  _$ChangepasswordEventCopyWithImpl(this._value, this._then);

  final ChangepasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangepasswordEvent) _then;
}

/// @nodoc
abstract class _$ChangeEemailCopyWith<$Res> {
  factory _$ChangeEemailCopyWith(
          _ChangeEemail value, $Res Function(_ChangeEemail) then) =
      __$ChangeEemailCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$ChangeEemailCopyWithImpl<$Res>
    extends _$ChangepasswordEventCopyWithImpl<$Res>
    implements _$ChangeEemailCopyWith<$Res> {
  __$ChangeEemailCopyWithImpl(
      _ChangeEemail _value, $Res Function(_ChangeEemail) _then)
      : super(_value, (v) => _then(v as _ChangeEemail));

  @override
  _ChangeEemail get _value => super._value as _ChangeEemail;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_ChangeEemail(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeEemail implements _ChangeEemail {
  const _$_ChangeEemail(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ChangepasswordEvent.changeEemail(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeEemail &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$ChangeEemailCopyWith<_ChangeEemail> get copyWith =>
      __$ChangeEemailCopyWithImpl<_ChangeEemail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEemail,
    required TResult Function(String passwordStr) changePpassword,
  }) {
    return changeEemail(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? changeEemail,
    TResult Function(String passwordStr)? changePpassword,
  }) {
    return changeEemail?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEemail,
    TResult Function(String passwordStr)? changePpassword,
    required TResult orElse(),
  }) {
    if (changeEemail != null) {
      return changeEemail(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEemail value) changeEemail,
    required TResult Function(_ChangePpassword value) changePpassword,
  }) {
    return changeEemail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeEemail value)? changeEemail,
    TResult Function(_ChangePpassword value)? changePpassword,
  }) {
    return changeEemail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEemail value)? changeEemail,
    TResult Function(_ChangePpassword value)? changePpassword,
    required TResult orElse(),
  }) {
    if (changeEemail != null) {
      return changeEemail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEemail implements ChangepasswordEvent {
  const factory _ChangeEemail(String emailStr) = _$_ChangeEemail;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeEemailCopyWith<_ChangeEemail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePpasswordCopyWith<$Res> {
  factory _$ChangePpasswordCopyWith(
          _ChangePpassword value, $Res Function(_ChangePpassword) then) =
      __$ChangePpasswordCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$ChangePpasswordCopyWithImpl<$Res>
    extends _$ChangepasswordEventCopyWithImpl<$Res>
    implements _$ChangePpasswordCopyWith<$Res> {
  __$ChangePpasswordCopyWithImpl(
      _ChangePpassword _value, $Res Function(_ChangePpassword) _then)
      : super(_value, (v) => _then(v as _ChangePpassword));

  @override
  _ChangePpassword get _value => super._value as _ChangePpassword;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_ChangePpassword(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePpassword implements _ChangePpassword {
  const _$_ChangePpassword(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangepasswordEvent.changePpassword(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePpassword &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$ChangePpasswordCopyWith<_ChangePpassword> get copyWith =>
      __$ChangePpasswordCopyWithImpl<_ChangePpassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEemail,
    required TResult Function(String passwordStr) changePpassword,
  }) {
    return changePpassword(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? changeEemail,
    TResult Function(String passwordStr)? changePpassword,
  }) {
    return changePpassword?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEemail,
    TResult Function(String passwordStr)? changePpassword,
    required TResult orElse(),
  }) {
    if (changePpassword != null) {
      return changePpassword(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEemail value) changeEemail,
    required TResult Function(_ChangePpassword value) changePpassword,
  }) {
    return changePpassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeEemail value)? changeEemail,
    TResult Function(_ChangePpassword value)? changePpassword,
  }) {
    return changePpassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEemail value)? changeEemail,
    TResult Function(_ChangePpassword value)? changePpassword,
    required TResult orElse(),
  }) {
    if (changePpassword != null) {
      return changePpassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePpassword implements ChangepasswordEvent {
  const factory _ChangePpassword(String passwordStr) = _$_ChangePpassword;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePpasswordCopyWith<_ChangePpassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChangepasswordStateTearOff {
  const _$ChangepasswordStateTearOff();

  _ChangepasswordState call(
      {required Email email, required Password password}) {
    return _ChangepasswordState(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $ChangepasswordState = _$ChangepasswordStateTearOff();

/// @nodoc
mixin _$ChangepasswordState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangepasswordStateCopyWith<ChangepasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangepasswordStateCopyWith<$Res> {
  factory $ChangepasswordStateCopyWith(
          ChangepasswordState value, $Res Function(ChangepasswordState) then) =
      _$ChangepasswordStateCopyWithImpl<$Res>;
  $Res call({Email email, Password password});
}

/// @nodoc
class _$ChangepasswordStateCopyWithImpl<$Res>
    implements $ChangepasswordStateCopyWith<$Res> {
  _$ChangepasswordStateCopyWithImpl(this._value, this._then);

  final ChangepasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangepasswordState) _then;

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
abstract class _$ChangepasswordStateCopyWith<$Res>
    implements $ChangepasswordStateCopyWith<$Res> {
  factory _$ChangepasswordStateCopyWith(_ChangepasswordState value,
          $Res Function(_ChangepasswordState) then) =
      __$ChangepasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({Email email, Password password});
}

/// @nodoc
class __$ChangepasswordStateCopyWithImpl<$Res>
    extends _$ChangepasswordStateCopyWithImpl<$Res>
    implements _$ChangepasswordStateCopyWith<$Res> {
  __$ChangepasswordStateCopyWithImpl(
      _ChangepasswordState _value, $Res Function(_ChangepasswordState) _then)
      : super(_value, (v) => _then(v as _ChangepasswordState));

  @override
  _ChangepasswordState get _value => super._value as _ChangepasswordState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_ChangepasswordState(
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

class _$_ChangepasswordState implements _ChangepasswordState {
  const _$_ChangepasswordState({required this.email, required this.password});

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'ChangepasswordState(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangepasswordState &&
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
  _$ChangepasswordStateCopyWith<_ChangepasswordState> get copyWith =>
      __$ChangepasswordStateCopyWithImpl<_ChangepasswordState>(
          this, _$identity);
}

abstract class _ChangepasswordState implements ChangepasswordState {
  const factory _ChangepasswordState(
      {required Email email,
      required Password password}) = _$_ChangepasswordState;

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangepasswordStateCopyWith<_ChangepasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
