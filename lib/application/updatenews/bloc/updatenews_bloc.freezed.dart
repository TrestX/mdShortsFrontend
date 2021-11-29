// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'updatenews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdatenewsEventTearOff {
  const _$UpdatenewsEventTearOff();

  _UpdateNews updateNews(String newsid, String status, String url,
      bool urlClicked, int timeSpent, String readAt) {
    return _UpdateNews(
      newsid,
      status,
      url,
      urlClicked,
      timeSpent,
      readAt,
    );
  }
}

/// @nodoc
const $UpdatenewsEvent = _$UpdatenewsEventTearOff();

/// @nodoc
mixin _$UpdatenewsEvent {
  String get newsid => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get urlClicked => throw _privateConstructorUsedError;
  int get timeSpent => throw _privateConstructorUsedError;
  String get readAt => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsid, String status, String url,
            bool urlClicked, int timeSpent, String readAt)
        updateNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newsid, String status, String url, bool urlClicked,
            int timeSpent, String readAt)?
        updateNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsid, String status, String url, bool urlClicked,
            int timeSpent, String readAt)?
        updateNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateNews value) updateNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateNews value)? updateNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateNews value)? updateNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatenewsEventCopyWith<UpdatenewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatenewsEventCopyWith<$Res> {
  factory $UpdatenewsEventCopyWith(
          UpdatenewsEvent value, $Res Function(UpdatenewsEvent) then) =
      _$UpdatenewsEventCopyWithImpl<$Res>;
  $Res call(
      {String newsid,
      String status,
      String url,
      bool urlClicked,
      int timeSpent,
      String readAt});
}

/// @nodoc
class _$UpdatenewsEventCopyWithImpl<$Res>
    implements $UpdatenewsEventCopyWith<$Res> {
  _$UpdatenewsEventCopyWithImpl(this._value, this._then);

  final UpdatenewsEvent _value;
  // ignore: unused_field
  final $Res Function(UpdatenewsEvent) _then;

  @override
  $Res call({
    Object? newsid = freezed,
    Object? status = freezed,
    Object? url = freezed,
    Object? urlClicked = freezed,
    Object? timeSpent = freezed,
    Object? readAt = freezed,
  }) {
    return _then(_value.copyWith(
      newsid: newsid == freezed
          ? _value.newsid
          : newsid // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlClicked: urlClicked == freezed
          ? _value.urlClicked
          : urlClicked // ignore: cast_nullable_to_non_nullable
              as bool,
      timeSpent: timeSpent == freezed
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
      readAt: readAt == freezed
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateNewsCopyWith<$Res>
    implements $UpdatenewsEventCopyWith<$Res> {
  factory _$UpdateNewsCopyWith(
          _UpdateNews value, $Res Function(_UpdateNews) then) =
      __$UpdateNewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String newsid,
      String status,
      String url,
      bool urlClicked,
      int timeSpent,
      String readAt});
}

/// @nodoc
class __$UpdateNewsCopyWithImpl<$Res>
    extends _$UpdatenewsEventCopyWithImpl<$Res>
    implements _$UpdateNewsCopyWith<$Res> {
  __$UpdateNewsCopyWithImpl(
      _UpdateNews _value, $Res Function(_UpdateNews) _then)
      : super(_value, (v) => _then(v as _UpdateNews));

  @override
  _UpdateNews get _value => super._value as _UpdateNews;

  @override
  $Res call({
    Object? newsid = freezed,
    Object? status = freezed,
    Object? url = freezed,
    Object? urlClicked = freezed,
    Object? timeSpent = freezed,
    Object? readAt = freezed,
  }) {
    return _then(_UpdateNews(
      newsid == freezed
          ? _value.newsid
          : newsid // ignore: cast_nullable_to_non_nullable
              as String,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlClicked == freezed
          ? _value.urlClicked
          : urlClicked // ignore: cast_nullable_to_non_nullable
              as bool,
      timeSpent == freezed
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
      readAt == freezed
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateNews implements _UpdateNews {
  const _$_UpdateNews(this.newsid, this.status, this.url, this.urlClicked,
      this.timeSpent, this.readAt);

  @override
  final String newsid;
  @override
  final String status;
  @override
  final String url;
  @override
  final bool urlClicked;
  @override
  final int timeSpent;
  @override
  final String readAt;

  @override
  String toString() {
    return 'UpdatenewsEvent.updateNews(newsid: $newsid, status: $status, url: $url, urlClicked: $urlClicked, timeSpent: $timeSpent, readAt: $readAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateNews &&
            (identical(other.newsid, newsid) ||
                const DeepCollectionEquality().equals(other.newsid, newsid)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.urlClicked, urlClicked) ||
                const DeepCollectionEquality()
                    .equals(other.urlClicked, urlClicked)) &&
            (identical(other.timeSpent, timeSpent) ||
                const DeepCollectionEquality()
                    .equals(other.timeSpent, timeSpent)) &&
            (identical(other.readAt, readAt) ||
                const DeepCollectionEquality().equals(other.readAt, readAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsid) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(urlClicked) ^
      const DeepCollectionEquality().hash(timeSpent) ^
      const DeepCollectionEquality().hash(readAt);

  @JsonKey(ignore: true)
  @override
  _$UpdateNewsCopyWith<_UpdateNews> get copyWith =>
      __$UpdateNewsCopyWithImpl<_UpdateNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsid, String status, String url,
            bool urlClicked, int timeSpent, String readAt)
        updateNews,
  }) {
    return updateNews(newsid, status, url, urlClicked, timeSpent, readAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String newsid, String status, String url, bool urlClicked,
            int timeSpent, String readAt)?
        updateNews,
  }) {
    return updateNews?.call(newsid, status, url, urlClicked, timeSpent, readAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsid, String status, String url, bool urlClicked,
            int timeSpent, String readAt)?
        updateNews,
    required TResult orElse(),
  }) {
    if (updateNews != null) {
      return updateNews(newsid, status, url, urlClicked, timeSpent, readAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateNews value) updateNews,
  }) {
    return updateNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateNews value)? updateNews,
  }) {
    return updateNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateNews value)? updateNews,
    required TResult orElse(),
  }) {
    if (updateNews != null) {
      return updateNews(this);
    }
    return orElse();
  }
}

abstract class _UpdateNews implements UpdatenewsEvent {
  const factory _UpdateNews(String newsid, String status, String url,
      bool urlClicked, int timeSpent, String readAt) = _$_UpdateNews;

  @override
  String get newsid => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  bool get urlClicked => throw _privateConstructorUsedError;
  @override
  int get timeSpent => throw _privateConstructorUsedError;
  @override
  String get readAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateNewsCopyWith<_UpdateNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdatenewsStateTearOff {
  const _$UpdatenewsStateTearOff();

  _UpdatenewsState call(
      {required Option<Either<UpdateNewsFailure, UpdateNews>>
          updateNewsFailureOrSuccessOption}) {
    return _UpdatenewsState(
      updateNewsFailureOrSuccessOption: updateNewsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UpdatenewsState = _$UpdatenewsStateTearOff();

/// @nodoc
mixin _$UpdatenewsState {
  Option<Either<UpdateNewsFailure, UpdateNews>>
      get updateNewsFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatenewsStateCopyWith<UpdatenewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatenewsStateCopyWith<$Res> {
  factory $UpdatenewsStateCopyWith(
          UpdatenewsState value, $Res Function(UpdatenewsState) then) =
      _$UpdatenewsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<UpdateNewsFailure, UpdateNews>>
          updateNewsFailureOrSuccessOption});
}

/// @nodoc
class _$UpdatenewsStateCopyWithImpl<$Res>
    implements $UpdatenewsStateCopyWith<$Res> {
  _$UpdatenewsStateCopyWithImpl(this._value, this._then);

  final UpdatenewsState _value;
  // ignore: unused_field
  final $Res Function(UpdatenewsState) _then;

  @override
  $Res call({
    Object? updateNewsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      updateNewsFailureOrSuccessOption: updateNewsFailureOrSuccessOption ==
              freezed
          ? _value.updateNewsFailureOrSuccessOption
          : updateNewsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UpdateNewsFailure, UpdateNews>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdatenewsStateCopyWith<$Res>
    implements $UpdatenewsStateCopyWith<$Res> {
  factory _$UpdatenewsStateCopyWith(
          _UpdatenewsState value, $Res Function(_UpdatenewsState) then) =
      __$UpdatenewsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<UpdateNewsFailure, UpdateNews>>
          updateNewsFailureOrSuccessOption});
}

/// @nodoc
class __$UpdatenewsStateCopyWithImpl<$Res>
    extends _$UpdatenewsStateCopyWithImpl<$Res>
    implements _$UpdatenewsStateCopyWith<$Res> {
  __$UpdatenewsStateCopyWithImpl(
      _UpdatenewsState _value, $Res Function(_UpdatenewsState) _then)
      : super(_value, (v) => _then(v as _UpdatenewsState));

  @override
  _UpdatenewsState get _value => super._value as _UpdatenewsState;

  @override
  $Res call({
    Object? updateNewsFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdatenewsState(
      updateNewsFailureOrSuccessOption: updateNewsFailureOrSuccessOption ==
              freezed
          ? _value.updateNewsFailureOrSuccessOption
          : updateNewsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UpdateNewsFailure, UpdateNews>>,
    ));
  }
}

/// @nodoc

class _$_UpdatenewsState implements _UpdatenewsState {
  const _$_UpdatenewsState({required this.updateNewsFailureOrSuccessOption});

  @override
  final Option<Either<UpdateNewsFailure, UpdateNews>>
      updateNewsFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdatenewsState(updateNewsFailureOrSuccessOption: $updateNewsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatenewsState &&
            (identical(other.updateNewsFailureOrSuccessOption,
                    updateNewsFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.updateNewsFailureOrSuccessOption,
                    updateNewsFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateNewsFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdatenewsStateCopyWith<_UpdatenewsState> get copyWith =>
      __$UpdatenewsStateCopyWithImpl<_UpdatenewsState>(this, _$identity);
}

abstract class _UpdatenewsState implements UpdatenewsState {
  const factory _UpdatenewsState(
      {required Option<Either<UpdateNewsFailure, UpdateNews>>
          updateNewsFailureOrSuccessOption}) = _$_UpdatenewsState;

  @override
  Option<Either<UpdateNewsFailure, UpdateNews>>
      get updateNewsFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdatenewsStateCopyWith<_UpdatenewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
