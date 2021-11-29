// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark_setter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookmarkSetterEventTearOff {
  const _$BookmarkSetterEventTearOff();

  _SetBookmark setBookmark(String? newsid) {
    return _SetBookmark(
      newsid,
    );
  }

  _RemoveBookmark removeBookmark(String? bmid) {
    return _RemoveBookmark(
      bmid,
    );
  }
}

/// @nodoc
const $BookmarkSetterEvent = _$BookmarkSetterEventTearOff();

/// @nodoc
mixin _$BookmarkSetterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newsid) setBookmark,
    required TResult Function(String? bmid) removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? newsid)? setBookmark,
    TResult Function(String? bmid)? removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newsid)? setBookmark,
    TResult Function(String? bmid)? removeBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetBookmark value) setBookmark,
    required TResult Function(_RemoveBookmark value) removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetBookmark value)? setBookmark,
    TResult Function(_RemoveBookmark value)? removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetBookmark value)? setBookmark,
    TResult Function(_RemoveBookmark value)? removeBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkSetterEventCopyWith<$Res> {
  factory $BookmarkSetterEventCopyWith(
          BookmarkSetterEvent value, $Res Function(BookmarkSetterEvent) then) =
      _$BookmarkSetterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookmarkSetterEventCopyWithImpl<$Res>
    implements $BookmarkSetterEventCopyWith<$Res> {
  _$BookmarkSetterEventCopyWithImpl(this._value, this._then);

  final BookmarkSetterEvent _value;
  // ignore: unused_field
  final $Res Function(BookmarkSetterEvent) _then;
}

/// @nodoc
abstract class _$SetBookmarkCopyWith<$Res> {
  factory _$SetBookmarkCopyWith(
          _SetBookmark value, $Res Function(_SetBookmark) then) =
      __$SetBookmarkCopyWithImpl<$Res>;
  $Res call({String? newsid});
}

/// @nodoc
class __$SetBookmarkCopyWithImpl<$Res>
    extends _$BookmarkSetterEventCopyWithImpl<$Res>
    implements _$SetBookmarkCopyWith<$Res> {
  __$SetBookmarkCopyWithImpl(
      _SetBookmark _value, $Res Function(_SetBookmark) _then)
      : super(_value, (v) => _then(v as _SetBookmark));

  @override
  _SetBookmark get _value => super._value as _SetBookmark;

  @override
  $Res call({
    Object? newsid = freezed,
  }) {
    return _then(_SetBookmark(
      newsid == freezed
          ? _value.newsid
          : newsid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetBookmark implements _SetBookmark {
  const _$_SetBookmark(this.newsid);

  @override
  final String? newsid;

  @override
  String toString() {
    return 'BookmarkSetterEvent.setBookmark(newsid: $newsid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetBookmark &&
            (identical(other.newsid, newsid) ||
                const DeepCollectionEquality().equals(other.newsid, newsid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsid);

  @JsonKey(ignore: true)
  @override
  _$SetBookmarkCopyWith<_SetBookmark> get copyWith =>
      __$SetBookmarkCopyWithImpl<_SetBookmark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newsid) setBookmark,
    required TResult Function(String? bmid) removeBookmark,
  }) {
    return setBookmark(newsid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? newsid)? setBookmark,
    TResult Function(String? bmid)? removeBookmark,
  }) {
    return setBookmark?.call(newsid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newsid)? setBookmark,
    TResult Function(String? bmid)? removeBookmark,
    required TResult orElse(),
  }) {
    if (setBookmark != null) {
      return setBookmark(newsid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetBookmark value) setBookmark,
    required TResult Function(_RemoveBookmark value) removeBookmark,
  }) {
    return setBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetBookmark value)? setBookmark,
    TResult Function(_RemoveBookmark value)? removeBookmark,
  }) {
    return setBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetBookmark value)? setBookmark,
    TResult Function(_RemoveBookmark value)? removeBookmark,
    required TResult orElse(),
  }) {
    if (setBookmark != null) {
      return setBookmark(this);
    }
    return orElse();
  }
}

abstract class _SetBookmark implements BookmarkSetterEvent {
  const factory _SetBookmark(String? newsid) = _$_SetBookmark;

  String? get newsid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetBookmarkCopyWith<_SetBookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveBookmarkCopyWith<$Res> {
  factory _$RemoveBookmarkCopyWith(
          _RemoveBookmark value, $Res Function(_RemoveBookmark) then) =
      __$RemoveBookmarkCopyWithImpl<$Res>;
  $Res call({String? bmid});
}

/// @nodoc
class __$RemoveBookmarkCopyWithImpl<$Res>
    extends _$BookmarkSetterEventCopyWithImpl<$Res>
    implements _$RemoveBookmarkCopyWith<$Res> {
  __$RemoveBookmarkCopyWithImpl(
      _RemoveBookmark _value, $Res Function(_RemoveBookmark) _then)
      : super(_value, (v) => _then(v as _RemoveBookmark));

  @override
  _RemoveBookmark get _value => super._value as _RemoveBookmark;

  @override
  $Res call({
    Object? bmid = freezed,
  }) {
    return _then(_RemoveBookmark(
      bmid == freezed
          ? _value.bmid
          : bmid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RemoveBookmark implements _RemoveBookmark {
  const _$_RemoveBookmark(this.bmid);

  @override
  final String? bmid;

  @override
  String toString() {
    return 'BookmarkSetterEvent.removeBookmark(bmid: $bmid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveBookmark &&
            (identical(other.bmid, bmid) ||
                const DeepCollectionEquality().equals(other.bmid, bmid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bmid);

  @JsonKey(ignore: true)
  @override
  _$RemoveBookmarkCopyWith<_RemoveBookmark> get copyWith =>
      __$RemoveBookmarkCopyWithImpl<_RemoveBookmark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newsid) setBookmark,
    required TResult Function(String? bmid) removeBookmark,
  }) {
    return removeBookmark(bmid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? newsid)? setBookmark,
    TResult Function(String? bmid)? removeBookmark,
  }) {
    return removeBookmark?.call(bmid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newsid)? setBookmark,
    TResult Function(String? bmid)? removeBookmark,
    required TResult orElse(),
  }) {
    if (removeBookmark != null) {
      return removeBookmark(bmid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetBookmark value) setBookmark,
    required TResult Function(_RemoveBookmark value) removeBookmark,
  }) {
    return removeBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetBookmark value)? setBookmark,
    TResult Function(_RemoveBookmark value)? removeBookmark,
  }) {
    return removeBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetBookmark value)? setBookmark,
    TResult Function(_RemoveBookmark value)? removeBookmark,
    required TResult orElse(),
  }) {
    if (removeBookmark != null) {
      return removeBookmark(this);
    }
    return orElse();
  }
}

abstract class _RemoveBookmark implements BookmarkSetterEvent {
  const factory _RemoveBookmark(String? bmid) = _$_RemoveBookmark;

  String? get bmid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveBookmarkCopyWith<_RemoveBookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookmarkSetterStateTearOff {
  const _$BookmarkSetterStateTearOff();

  _BookmarkSetterState call(
      {required Option<Either<BookmarkFailure, Bookmark>>
          bookmarkedFailureOrSuccessOption}) {
    return _BookmarkSetterState(
      bookmarkedFailureOrSuccessOption: bookmarkedFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $BookmarkSetterState = _$BookmarkSetterStateTearOff();

/// @nodoc
mixin _$BookmarkSetterState {
  Option<Either<BookmarkFailure, Bookmark>>
      get bookmarkedFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkSetterStateCopyWith<BookmarkSetterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkSetterStateCopyWith<$Res> {
  factory $BookmarkSetterStateCopyWith(
          BookmarkSetterState value, $Res Function(BookmarkSetterState) then) =
      _$BookmarkSetterStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<BookmarkFailure, Bookmark>>
          bookmarkedFailureOrSuccessOption});
}

/// @nodoc
class _$BookmarkSetterStateCopyWithImpl<$Res>
    implements $BookmarkSetterStateCopyWith<$Res> {
  _$BookmarkSetterStateCopyWithImpl(this._value, this._then);

  final BookmarkSetterState _value;
  // ignore: unused_field
  final $Res Function(BookmarkSetterState) _then;

  @override
  $Res call({
    Object? bookmarkedFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      bookmarkedFailureOrSuccessOption: bookmarkedFailureOrSuccessOption ==
              freezed
          ? _value.bookmarkedFailureOrSuccessOption
          : bookmarkedFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookmarkFailure, Bookmark>>,
    ));
  }
}

/// @nodoc
abstract class _$BookmarkSetterStateCopyWith<$Res>
    implements $BookmarkSetterStateCopyWith<$Res> {
  factory _$BookmarkSetterStateCopyWith(_BookmarkSetterState value,
          $Res Function(_BookmarkSetterState) then) =
      __$BookmarkSetterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<BookmarkFailure, Bookmark>>
          bookmarkedFailureOrSuccessOption});
}

/// @nodoc
class __$BookmarkSetterStateCopyWithImpl<$Res>
    extends _$BookmarkSetterStateCopyWithImpl<$Res>
    implements _$BookmarkSetterStateCopyWith<$Res> {
  __$BookmarkSetterStateCopyWithImpl(
      _BookmarkSetterState _value, $Res Function(_BookmarkSetterState) _then)
      : super(_value, (v) => _then(v as _BookmarkSetterState));

  @override
  _BookmarkSetterState get _value => super._value as _BookmarkSetterState;

  @override
  $Res call({
    Object? bookmarkedFailureOrSuccessOption = freezed,
  }) {
    return _then(_BookmarkSetterState(
      bookmarkedFailureOrSuccessOption: bookmarkedFailureOrSuccessOption ==
              freezed
          ? _value.bookmarkedFailureOrSuccessOption
          : bookmarkedFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookmarkFailure, Bookmark>>,
    ));
  }
}

/// @nodoc

class _$_BookmarkSetterState implements _BookmarkSetterState {
  const _$_BookmarkSetterState(
      {required this.bookmarkedFailureOrSuccessOption});

  @override
  final Option<Either<BookmarkFailure, Bookmark>>
      bookmarkedFailureOrSuccessOption;

  @override
  String toString() {
    return 'BookmarkSetterState(bookmarkedFailureOrSuccessOption: $bookmarkedFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkSetterState &&
            (identical(other.bookmarkedFailureOrSuccessOption,
                    bookmarkedFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.bookmarkedFailureOrSuccessOption,
                    bookmarkedFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookmarkedFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$BookmarkSetterStateCopyWith<_BookmarkSetterState> get copyWith =>
      __$BookmarkSetterStateCopyWithImpl<_BookmarkSetterState>(
          this, _$identity);
}

abstract class _BookmarkSetterState implements BookmarkSetterState {
  const factory _BookmarkSetterState(
      {required Option<Either<BookmarkFailure, Bookmark>>
          bookmarkedFailureOrSuccessOption}) = _$_BookmarkSetterState;

  @override
  Option<Either<BookmarkFailure, Bookmark>>
      get bookmarkedFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookmarkSetterStateCopyWith<_BookmarkSetterState> get copyWith =>
      throw _privateConstructorUsedError;
}
