// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookmarkEventTearOff {
  const _$BookmarkEventTearOff();

  _GetBookmarks getBookmarks() {
    return const _GetBookmarks();
  }

  _ValueReceived valueReceived(
      Either<BookmarkFailure, Bookmark> failureOrValue) {
    return _ValueReceived(
      failureOrValue,
    );
  }

  _BookmarkReceived bookmarkReceived(
      Either<BookmarkFailure, List<BookmarkGet>> failureOrValue) {
    return _BookmarkReceived(
      failureOrValue,
    );
  }
}

/// @nodoc
const $BookmarkEvent = _$BookmarkEventTearOff();

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBookmarks,
    required TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)
        valueReceived,
    required TResult Function(
            Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)
        bookmarkReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBookmarks value) getBookmarks,
    required TResult Function(_ValueReceived value) valueReceived,
    required TResult Function(_BookmarkReceived value) bookmarkReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  final BookmarkEvent _value;
  // ignore: unused_field
  final $Res Function(BookmarkEvent) _then;
}

/// @nodoc
abstract class _$GetBookmarksCopyWith<$Res> {
  factory _$GetBookmarksCopyWith(
          _GetBookmarks value, $Res Function(_GetBookmarks) then) =
      __$GetBookmarksCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBookmarksCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
    implements _$GetBookmarksCopyWith<$Res> {
  __$GetBookmarksCopyWithImpl(
      _GetBookmarks _value, $Res Function(_GetBookmarks) _then)
      : super(_value, (v) => _then(v as _GetBookmarks));

  @override
  _GetBookmarks get _value => super._value as _GetBookmarks;
}

/// @nodoc

class _$_GetBookmarks implements _GetBookmarks {
  const _$_GetBookmarks();

  @override
  String toString() {
    return 'BookmarkEvent.getBookmarks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetBookmarks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBookmarks,
    required TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)
        valueReceived,
    required TResult Function(
            Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)
        bookmarkReceived,
  }) {
    return getBookmarks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
  }) {
    return getBookmarks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
    required TResult orElse(),
  }) {
    if (getBookmarks != null) {
      return getBookmarks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBookmarks value) getBookmarks,
    required TResult Function(_ValueReceived value) valueReceived,
    required TResult Function(_BookmarkReceived value) bookmarkReceived,
  }) {
    return getBookmarks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
  }) {
    return getBookmarks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
    required TResult orElse(),
  }) {
    if (getBookmarks != null) {
      return getBookmarks(this);
    }
    return orElse();
  }
}

abstract class _GetBookmarks implements BookmarkEvent {
  const factory _GetBookmarks() = _$_GetBookmarks;
}

/// @nodoc
abstract class _$ValueReceivedCopyWith<$Res> {
  factory _$ValueReceivedCopyWith(
          _ValueReceived value, $Res Function(_ValueReceived) then) =
      __$ValueReceivedCopyWithImpl<$Res>;
  $Res call({Either<BookmarkFailure, Bookmark> failureOrValue});
}

/// @nodoc
class __$ValueReceivedCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
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
              as Either<BookmarkFailure, Bookmark>,
    ));
  }
}

/// @nodoc

class _$_ValueReceived implements _ValueReceived {
  const _$_ValueReceived(this.failureOrValue);

  @override
  final Either<BookmarkFailure, Bookmark> failureOrValue;

  @override
  String toString() {
    return 'BookmarkEvent.valueReceived(failureOrValue: $failureOrValue)';
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
    required TResult Function() getBookmarks,
    required TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)
        valueReceived,
    required TResult Function(
            Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)
        bookmarkReceived,
  }) {
    return valueReceived(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
  }) {
    return valueReceived?.call(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
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
    required TResult Function(_GetBookmarks value) getBookmarks,
    required TResult Function(_ValueReceived value) valueReceived,
    required TResult Function(_BookmarkReceived value) bookmarkReceived,
  }) {
    return valueReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
  }) {
    return valueReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
    required TResult orElse(),
  }) {
    if (valueReceived != null) {
      return valueReceived(this);
    }
    return orElse();
  }
}

abstract class _ValueReceived implements BookmarkEvent {
  const factory _ValueReceived(
      Either<BookmarkFailure, Bookmark> failureOrValue) = _$_ValueReceived;

  Either<BookmarkFailure, Bookmark> get failureOrValue =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValueReceivedCopyWith<_ValueReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BookmarkReceivedCopyWith<$Res> {
  factory _$BookmarkReceivedCopyWith(
          _BookmarkReceived value, $Res Function(_BookmarkReceived) then) =
      __$BookmarkReceivedCopyWithImpl<$Res>;
  $Res call({Either<BookmarkFailure, List<BookmarkGet>> failureOrValue});
}

/// @nodoc
class __$BookmarkReceivedCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
    implements _$BookmarkReceivedCopyWith<$Res> {
  __$BookmarkReceivedCopyWithImpl(
      _BookmarkReceived _value, $Res Function(_BookmarkReceived) _then)
      : super(_value, (v) => _then(v as _BookmarkReceived));

  @override
  _BookmarkReceived get _value => super._value as _BookmarkReceived;

  @override
  $Res call({
    Object? failureOrValue = freezed,
  }) {
    return _then(_BookmarkReceived(
      failureOrValue == freezed
          ? _value.failureOrValue
          : failureOrValue // ignore: cast_nullable_to_non_nullable
              as Either<BookmarkFailure, List<BookmarkGet>>,
    ));
  }
}

/// @nodoc

class _$_BookmarkReceived implements _BookmarkReceived {
  const _$_BookmarkReceived(this.failureOrValue);

  @override
  final Either<BookmarkFailure, List<BookmarkGet>> failureOrValue;

  @override
  String toString() {
    return 'BookmarkEvent.bookmarkReceived(failureOrValue: $failureOrValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkReceived &&
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
  _$BookmarkReceivedCopyWith<_BookmarkReceived> get copyWith =>
      __$BookmarkReceivedCopyWithImpl<_BookmarkReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBookmarks,
    required TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)
        valueReceived,
    required TResult Function(
            Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)
        bookmarkReceived,
  }) {
    return bookmarkReceived(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
  }) {
    return bookmarkReceived?.call(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookmarks,
    TResult Function(Either<BookmarkFailure, Bookmark> failureOrValue)?
        valueReceived,
    TResult Function(Either<BookmarkFailure, List<BookmarkGet>> failureOrValue)?
        bookmarkReceived,
    required TResult orElse(),
  }) {
    if (bookmarkReceived != null) {
      return bookmarkReceived(failureOrValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBookmarks value) getBookmarks,
    required TResult Function(_ValueReceived value) valueReceived,
    required TResult Function(_BookmarkReceived value) bookmarkReceived,
  }) {
    return bookmarkReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
  }) {
    return bookmarkReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBookmarks value)? getBookmarks,
    TResult Function(_ValueReceived value)? valueReceived,
    TResult Function(_BookmarkReceived value)? bookmarkReceived,
    required TResult orElse(),
  }) {
    if (bookmarkReceived != null) {
      return bookmarkReceived(this);
    }
    return orElse();
  }
}

abstract class _BookmarkReceived implements BookmarkEvent {
  const factory _BookmarkReceived(
          Either<BookmarkFailure, List<BookmarkGet>> failureOrValue) =
      _$_BookmarkReceived;

  Either<BookmarkFailure, List<BookmarkGet>> get failureOrValue =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BookmarkReceivedCopyWith<_BookmarkReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookmarkStateTearOff {
  const _$BookmarkStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(dynamic data) {
    return _LoadSuccess(
      data,
    );
  }

  _LoadFailure loadFailure(BookmarkFailure bookmarkFailure) {
    return _LoadFailure(
      bookmarkFailure,
    );
  }
}

/// @nodoc
const $BookmarkState = _$BookmarkStateTearOff();

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic data) loadSuccess,
    required TResult Function(BookmarkFailure bookmarkFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
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
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  final BookmarkState _value;
  // ignore: unused_field
  final $Res Function(BookmarkState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BookmarkStateCopyWithImpl<$Res>
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
    return 'BookmarkState.initial()';
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
    required TResult Function(dynamic data) loadSuccess,
    required TResult Function(BookmarkFailure bookmarkFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
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

abstract class _Initial implements BookmarkState {
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
    extends _$BookmarkStateCopyWithImpl<$Res>
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
    return 'BookmarkState.loadInProgress()';
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
    required TResult Function(dynamic data) loadSuccess,
    required TResult Function(BookmarkFailure bookmarkFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
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

abstract class _LoadInProgress implements BookmarkState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$BookmarkStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_LoadSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'BookmarkState.loadSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic data) loadSuccess,
    required TResult Function(BookmarkFailure bookmarkFailure) loadFailure,
  }) {
    return loadSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
  }) {
    return loadSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(data);
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

abstract class _LoadSuccess implements BookmarkState {
  const factory _LoadSuccess(dynamic data) = _$_LoadSuccess;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({BookmarkFailure bookmarkFailure});

  $BookmarkFailureCopyWith<$Res> get bookmarkFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$BookmarkStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? bookmarkFailure = freezed,
  }) {
    return _then(_LoadFailure(
      bookmarkFailure == freezed
          ? _value.bookmarkFailure
          : bookmarkFailure // ignore: cast_nullable_to_non_nullable
              as BookmarkFailure,
    ));
  }

  @override
  $BookmarkFailureCopyWith<$Res> get bookmarkFailure {
    return $BookmarkFailureCopyWith<$Res>(_value.bookmarkFailure, (value) {
      return _then(_value.copyWith(bookmarkFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.bookmarkFailure);

  @override
  final BookmarkFailure bookmarkFailure;

  @override
  String toString() {
    return 'BookmarkState.loadFailure(bookmarkFailure: $bookmarkFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.bookmarkFailure, bookmarkFailure) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarkFailure, bookmarkFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookmarkFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic data) loadSuccess,
    required TResult Function(BookmarkFailure bookmarkFailure) loadFailure,
  }) {
    return loadFailure(bookmarkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
  }) {
    return loadFailure?.call(bookmarkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic data)? loadSuccess,
    TResult Function(BookmarkFailure bookmarkFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(bookmarkFailure);
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

abstract class _LoadFailure implements BookmarkState {
  const factory _LoadFailure(BookmarkFailure bookmarkFailure) = _$_LoadFailure;

  BookmarkFailure get bookmarkFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
