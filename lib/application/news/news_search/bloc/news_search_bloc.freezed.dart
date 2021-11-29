// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsSearchEventTearOff {
  const _$NewsSearchEventTearOff();

  _WatchAllStarted watchAllStarted(String? search) {
    return _WatchAllStarted(
      search,
    );
  }

  _ValueReceived valueReceived(Either<NewsFailure, List<News>> failureOrValue) {
    return _ValueReceived(
      failureOrValue,
    );
  }
}

/// @nodoc
const $NewsSearchEvent = _$NewsSearchEventTearOff();

/// @nodoc
mixin _$NewsSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) watchAllStarted,
    required TResult Function(Either<NewsFailure, List<News>> failureOrValue)
        valueReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? search)? watchAllStarted,
    TResult Function(Either<NewsFailure, List<News>> failureOrValue)?
        valueReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? watchAllStarted,
    TResult Function(Either<NewsFailure, List<News>> failureOrValue)?
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
abstract class $NewsSearchEventCopyWith<$Res> {
  factory $NewsSearchEventCopyWith(
          NewsSearchEvent value, $Res Function(NewsSearchEvent) then) =
      _$NewsSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsSearchEventCopyWithImpl<$Res>
    implements $NewsSearchEventCopyWith<$Res> {
  _$NewsSearchEventCopyWithImpl(this._value, this._then);

  final NewsSearchEvent _value;
  // ignore: unused_field
  final $Res Function(NewsSearchEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String? search});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$NewsSearchEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_WatchAllStarted(
      search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.search);

  @override
  final String? search;

  @override
  String toString() {
    return 'NewsSearchEvent.watchAllStarted(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @JsonKey(ignore: true)
  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) watchAllStarted,
    required TResult Function(Either<NewsFailure, List<News>> failureOrValue)
        valueReceived,
  }) {
    return watchAllStarted(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? search)? watchAllStarted,
    TResult Function(Either<NewsFailure, List<News>> failureOrValue)?
        valueReceived,
  }) {
    return watchAllStarted?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? watchAllStarted,
    TResult Function(Either<NewsFailure, List<News>> failureOrValue)?
        valueReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(search);
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

abstract class _WatchAllStarted implements NewsSearchEvent {
  const factory _WatchAllStarted(String? search) = _$_WatchAllStarted;

  String? get search => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValueReceivedCopyWith<$Res> {
  factory _$ValueReceivedCopyWith(
          _ValueReceived value, $Res Function(_ValueReceived) then) =
      __$ValueReceivedCopyWithImpl<$Res>;
  $Res call({Either<NewsFailure, List<News>> failureOrValue});
}

/// @nodoc
class __$ValueReceivedCopyWithImpl<$Res>
    extends _$NewsSearchEventCopyWithImpl<$Res>
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
              as Either<NewsFailure, List<News>>,
    ));
  }
}

/// @nodoc

class _$_ValueReceived implements _ValueReceived {
  const _$_ValueReceived(this.failureOrValue);

  @override
  final Either<NewsFailure, List<News>> failureOrValue;

  @override
  String toString() {
    return 'NewsSearchEvent.valueReceived(failureOrValue: $failureOrValue)';
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
    required TResult Function(String? search) watchAllStarted,
    required TResult Function(Either<NewsFailure, List<News>> failureOrValue)
        valueReceived,
  }) {
    return valueReceived(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? search)? watchAllStarted,
    TResult Function(Either<NewsFailure, List<News>> failureOrValue)?
        valueReceived,
  }) {
    return valueReceived?.call(failureOrValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? watchAllStarted,
    TResult Function(Either<NewsFailure, List<News>> failureOrValue)?
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

abstract class _ValueReceived implements NewsSearchEvent {
  const factory _ValueReceived(Either<NewsFailure, List<News>> failureOrValue) =
      _$_ValueReceived;

  Either<NewsFailure, List<News>> get failureOrValue =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValueReceivedCopyWith<_ValueReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NewsSearchStateTearOff {
  const _$NewsSearchStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<News> news) {
    return _LoadSuccess(
      news,
    );
  }

  _LoadFailure loadFailure(NewsFailure newsFailure) {
    return _LoadFailure(
      newsFailure,
    );
  }
}

/// @nodoc
const $NewsSearchState = _$NewsSearchStateTearOff();

/// @nodoc
mixin _$NewsSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<News> news) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
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
abstract class $NewsSearchStateCopyWith<$Res> {
  factory $NewsSearchStateCopyWith(
          NewsSearchState value, $Res Function(NewsSearchState) then) =
      _$NewsSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsSearchStateCopyWithImpl<$Res>
    implements $NewsSearchStateCopyWith<$Res> {
  _$NewsSearchStateCopyWithImpl(this._value, this._then);

  final NewsSearchState _value;
  // ignore: unused_field
  final $Res Function(NewsSearchState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NewsSearchStateCopyWithImpl<$Res>
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
    return 'NewsSearchState.initial()';
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
    required TResult Function(List<News> news) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
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

abstract class _Initial implements NewsSearchState {
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
    extends _$NewsSearchStateCopyWithImpl<$Res>
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
    return 'NewsSearchState.loadInProgress()';
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
    required TResult Function(List<News> news) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
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

abstract class _LoadInProgress implements NewsSearchState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<News> news});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$NewsSearchStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_LoadSuccess(
      news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.news);

  @override
  final List<News> news;

  @override
  String toString() {
    return 'NewsSearchState.loadSuccess(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(news);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<News> news) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return loadSuccess(news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(news);
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

abstract class _LoadSuccess implements NewsSearchState {
  const factory _LoadSuccess(List<News> news) = _$_LoadSuccess;

  List<News> get news => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NewsFailure newsFailure});

  $NewsFailureCopyWith<$Res> get newsFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$NewsSearchStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? newsFailure = freezed,
  }) {
    return _then(_LoadFailure(
      newsFailure == freezed
          ? _value.newsFailure
          : newsFailure // ignore: cast_nullable_to_non_nullable
              as NewsFailure,
    ));
  }

  @override
  $NewsFailureCopyWith<$Res> get newsFailure {
    return $NewsFailureCopyWith<$Res>(_value.newsFailure, (value) {
      return _then(_value.copyWith(newsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.newsFailure);

  @override
  final NewsFailure newsFailure;

  @override
  String toString() {
    return 'NewsSearchState.loadFailure(newsFailure: $newsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.newsFailure, newsFailure) ||
                const DeepCollectionEquality()
                    .equals(other.newsFailure, newsFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<News> news) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return loadFailure(newsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return loadFailure?.call(newsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<News> news)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(newsFailure);
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

abstract class _LoadFailure implements NewsSearchState {
  const factory _LoadFailure(NewsFailure newsFailure) = _$_LoadFailure;

  NewsFailure get newsFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
