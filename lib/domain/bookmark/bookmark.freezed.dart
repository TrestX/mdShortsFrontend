// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookmarkTearOff {
  const _$BookmarkTearOff();

  _Bookmark call({required String message}) {
    return _Bookmark(
      message: message,
    );
  }
}

/// @nodoc
const $Bookmark = _$BookmarkTearOff();

/// @nodoc
mixin _$Bookmark {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkCopyWith<Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$BookmarkCopyWithImpl<$Res> implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  final Bookmark _value;
  // ignore: unused_field
  final $Res Function(Bookmark) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookmarkCopyWith<$Res> implements $BookmarkCopyWith<$Res> {
  factory _$BookmarkCopyWith(_Bookmark value, $Res Function(_Bookmark) then) =
      __$BookmarkCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$BookmarkCopyWithImpl<$Res> extends _$BookmarkCopyWithImpl<$Res>
    implements _$BookmarkCopyWith<$Res> {
  __$BookmarkCopyWithImpl(_Bookmark _value, $Res Function(_Bookmark) _then)
      : super(_value, (v) => _then(v as _Bookmark));

  @override
  _Bookmark get _value => super._value as _Bookmark;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Bookmark(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Bookmark implements _Bookmark {
  const _$_Bookmark({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Bookmark(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bookmark &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BookmarkCopyWith<_Bookmark> get copyWith =>
      __$BookmarkCopyWithImpl<_Bookmark>(this, _$identity);
}

abstract class _Bookmark implements Bookmark {
  const factory _Bookmark({required String message}) = _$_Bookmark;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookmarkCopyWith<_Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookmarkGetTearOff {
  const _$BookmarkGetTearOff();

  _BookmarkGet call(
      {required UniqueId id,
      required String urlToImage,
      required String title,
      required String description,
      required String sourceName,
      required String author,
      required String publishedAt,
      required String url}) {
    return _BookmarkGet(
      id: id,
      urlToImage: urlToImage,
      title: title,
      description: description,
      sourceName: sourceName,
      author: author,
      publishedAt: publishedAt,
      url: url,
    );
  }
}

/// @nodoc
const $BookmarkGet = _$BookmarkGetTearOff();

/// @nodoc
mixin _$BookmarkGet {
  UniqueId get id => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get sourceName => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkGetCopyWith<BookmarkGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkGetCopyWith<$Res> {
  factory $BookmarkGetCopyWith(
          BookmarkGet value, $Res Function(BookmarkGet) then) =
      _$BookmarkGetCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String urlToImage,
      String title,
      String description,
      String sourceName,
      String author,
      String publishedAt,
      String url});
}

/// @nodoc
class _$BookmarkGetCopyWithImpl<$Res> implements $BookmarkGetCopyWith<$Res> {
  _$BookmarkGetCopyWithImpl(this._value, this._then);

  final BookmarkGet _value;
  // ignore: unused_field
  final $Res Function(BookmarkGet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? urlToImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? sourceName = freezed,
    Object? author = freezed,
    Object? publishedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: sourceName == freezed
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookmarkGetCopyWith<$Res>
    implements $BookmarkGetCopyWith<$Res> {
  factory _$BookmarkGetCopyWith(
          _BookmarkGet value, $Res Function(_BookmarkGet) then) =
      __$BookmarkGetCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String urlToImage,
      String title,
      String description,
      String sourceName,
      String author,
      String publishedAt,
      String url});
}

/// @nodoc
class __$BookmarkGetCopyWithImpl<$Res> extends _$BookmarkGetCopyWithImpl<$Res>
    implements _$BookmarkGetCopyWith<$Res> {
  __$BookmarkGetCopyWithImpl(
      _BookmarkGet _value, $Res Function(_BookmarkGet) _then)
      : super(_value, (v) => _then(v as _BookmarkGet));

  @override
  _BookmarkGet get _value => super._value as _BookmarkGet;

  @override
  $Res call({
    Object? id = freezed,
    Object? urlToImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? sourceName = freezed,
    Object? author = freezed,
    Object? publishedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_BookmarkGet(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: sourceName == freezed
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BookmarkGet implements _BookmarkGet {
  const _$_BookmarkGet(
      {required this.id,
      required this.urlToImage,
      required this.title,
      required this.description,
      required this.sourceName,
      required this.author,
      required this.publishedAt,
      required this.url});

  @override
  final UniqueId id;
  @override
  final String urlToImage;
  @override
  final String title;
  @override
  final String description;
  @override
  final String sourceName;
  @override
  final String author;
  @override
  final String publishedAt;
  @override
  final String url;

  @override
  String toString() {
    return 'BookmarkGet(id: $id, urlToImage: $urlToImage, title: $title, description: $description, sourceName: $sourceName, author: $author, publishedAt: $publishedAt, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkGet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.urlToImage, urlToImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlToImage, urlToImage)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.sourceName, sourceName) ||
                const DeepCollectionEquality()
                    .equals(other.sourceName, sourceName)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(urlToImage) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(sourceName) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$BookmarkGetCopyWith<_BookmarkGet> get copyWith =>
      __$BookmarkGetCopyWithImpl<_BookmarkGet>(this, _$identity);
}

abstract class _BookmarkGet implements BookmarkGet {
  const factory _BookmarkGet(
      {required UniqueId id,
      required String urlToImage,
      required String title,
      required String description,
      required String sourceName,
      required String author,
      required String publishedAt,
      required String url}) = _$_BookmarkGet;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get urlToImage => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get sourceName => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get publishedAt => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookmarkGetCopyWith<_BookmarkGet> get copyWith =>
      throw _privateConstructorUsedError;
}
