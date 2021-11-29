// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verifyemail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyemailEventTearOff {
  const _$VerifyemailEventTearOff();

  _WatchAllStarted watchAllStarted(String? token) {
    return _WatchAllStarted(
      token,
    );
  }

  _ValueReceived valueReceived(
      Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue) {
    return _ValueReceived(
      failureOrValue,
    );
  }
}

/// @nodoc
const $VerifyemailEvent = _$VerifyemailEventTearOff();

/// @nodoc
mixin _$VerifyemailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) watchAllStarted,
    required TResult Function(
            Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)
        valueReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? watchAllStarted,
    TResult Function(Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)?
        valueReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? watchAllStarted,
    TResult Function(Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)?
        valueReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ValueReceived value) valueReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ValueReceived value)? valueReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ValueReceived value)? valueReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyemailEventCopyWith<$Res> {
  factory $VerifyemailEventCopyWith(
          VerifyemailEvent value, $Res Function(VerifyemailEvent) then) =
      _$VerifyemailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyemailEventCopyWithImpl<$Res>
    implements $VerifyemailEventCopyWith<$Res> {
  _$VerifyemailEventCopyWithImpl(this._value, this._then);

  final VerifyemailEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyemailEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$VerifyemailEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_WatchAllStarted(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.token);

  @override
  final String? token;

  @override
  String toString() {
    return 'VerifyemailEvent.watchAllStarted(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) watchAllStarted,
    required TResult Function(
            Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)
        valueReceived,
  }) {
    return watchAllStarted(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? watchAllStarted,
    TResult Function(Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)?
        valueReceived,
  }) {
    return watchAllStarted?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? watchAllStarted,
    TResult Function(Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)?
        valueReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ValueReceived value) valueReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ValueReceived value)? valueReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ValueReceived value)? valueReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements VerifyemailEvent {
  const factory _WatchAllStarted(String? token) = _$_WatchAllStarted;

  String? get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValueReceivedCopyWith<$Res> {
  factory _$ValueReceivedCopyWith(
          _ValueReceived value, $Res Function(_ValueReceived) then) =
      __$ValueReceivedCopyWithImpl<$Res>;
  $Res call({Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue});
}

/// @nodoc
class __$ValueReceivedCopyWithImpl<$Res>
    extends _$VerifyemailEventCopyWithImpl<$Res>
    implements _$ValueReceivedCopyWith<$Res> {
  __$ValueReceivedCopyWithImpl(
      _ValueReceived _value, $Res Function(_ValueReceived) _then)
      : super(_value, (v) => _then(v as _ValueReceived));

  @override
  _ValueReceived get _value => super._value as _ValueReceived;

  @override
  $Res call({
    Object? failureOrValue = freezed,
  }) {
    return _then(_ValueReceived(
      failureOrValue == freezed
          ? _value.failureOrValue
          : failureOrValue // ignore: cast_nullable_to_non_nullable
              as Either<VerifyEmailFailure, VerifyEmailMsg>,
    ));
  }
}

/// @nodoc

class _$_ValueReceived implements _ValueReceived {
  const _$_ValueReceived(this.failureOrValue);

  @override
  final Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue;

  @override
  String toString() {
    return 'VerifyemailEvent.valueReceived(failureOrValue: $failureOrValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueReceived &&
            (identical(other.failureOrValue, failureOrValue) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrValue, failureOrValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrValue);

  @JsonKey(ignore: true)
  @override
  _$ValueReceivedCopyWith<_ValueReceived> get copyWith =>
      __$ValueReceivedCopyWithImpl<_ValueReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) watchAllStarted,
    required TResult Function(
            Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)
        valueReceived,
  }) {
    return valueReceived(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? watchAllStarted,
    TResult Function(Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)?
        valueReceived,
  }) {
    return valueReceived?.call(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? watchAllStarted,
    TResult Function(Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue)?
        valueReceived,
    required TResult orElse(),
  }) {
    if (valueReceived != null) {
      return valueReceived(failureOrValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ValueReceived value) valueReceived,
  }) {
    return valueReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ValueReceived value)? valueReceived,
  }) {
    return valueReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ValueReceived value)? valueReceived,
    required TResult orElse(),
  }) {
    if (valueReceived != null) {
      return valueReceived(this);
    }
    return orElse();
  }
}

abstract class _ValueReceived implements VerifyemailEvent {
  const factory _ValueReceived(
          Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue) =
      _$_ValueReceived;

  Either<VerifyEmailFailure, VerifyEmailMsg> get failureOrValue =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValueReceivedCopyWith<_ValueReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VerifyemailStateTearOff {
  const _$VerifyemailStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(String message) {
    return _LoadSuccess(
      message,
    );
  }

  _LoadFailure loadFailure(VerifyEmailFailure verifyemailFailure) {
    return _LoadFailure(
      verifyemailFailure,
    );
  }
}

/// @nodoc
const $VerifyemailState = _$VerifyemailStateTearOff();

/// @nodoc
mixin _$VerifyemailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) loadSuccess,
    required TResult Function(VerifyEmailFailure verifyemailFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyemailStateCopyWith<$Res> {
  factory $VerifyemailStateCopyWith(
          VerifyemailState value, $Res Function(VerifyemailState) then) =
      _$VerifyemailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyemailStateCopyWithImpl<$Res>
    implements $VerifyemailStateCopyWith<$Res> {
  _$VerifyemailStateCopyWithImpl(this._value, this._then);

  final VerifyemailState _value;
  // ignore: unused_field
  final $Res Function(VerifyemailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$VerifyemailStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VerifyemailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) loadSuccess,
    required TResult Function(VerifyEmailFailure verifyemailFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerifyemailState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$VerifyemailStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'VerifyemailState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) loadSuccess,
    required TResult Function(VerifyEmailFailure verifyemailFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements VerifyemailState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$VerifyemailStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LoadSuccess(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VerifyemailState.loadSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) loadSuccess,
    required TResult Function(VerifyEmailFailure verifyemailFailure)
        loadFailure,
  }) {
    return loadSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
  }) {
    return loadSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements VerifyemailState {
  const factory _LoadSuccess(String message) = _$_LoadSuccess;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({VerifyEmailFailure verifyemailFailure});

  $VerifyEmailFailureCopyWith<$Res> get verifyemailFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$VerifyemailStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? verifyemailFailure = freezed,
  }) {
    return _then(_LoadFailure(
      verifyemailFailure == freezed
          ? _value.verifyemailFailure
          : verifyemailFailure // ignore: cast_nullable_to_non_nullable
              as VerifyEmailFailure,
    ));
  }

  @override
  $VerifyEmailFailureCopyWith<$Res> get verifyemailFailure {
    return $VerifyEmailFailureCopyWith<$Res>(_value.verifyemailFailure,
        (value) {
      return _then(_value.copyWith(verifyemailFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.verifyemailFailure);

  @override
  final VerifyEmailFailure verifyemailFailure;

  @override
  String toString() {
    return 'VerifyemailState.loadFailure(verifyemailFailure: $verifyemailFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.verifyemailFailure, verifyemailFailure) ||
                const DeepCollectionEquality()
                    .equals(other.verifyemailFailure, verifyemailFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verifyemailFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) loadSuccess,
    required TResult Function(VerifyEmailFailure verifyemailFailure)
        loadFailure,
  }) {
    return loadFailure(verifyemailFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
  }) {
    return loadFailure?.call(verifyemailFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? loadSuccess,
    TResult Function(VerifyEmailFailure verifyemailFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(verifyemailFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements VerifyemailState {
  const factory _LoadFailure(VerifyEmailFailure verifyemailFailure) =
      _$_LoadFailure;

  VerifyEmailFailure get verifyemailFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
