// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookmarkDto _$BookmarkDtoFromJson(Map<String, dynamic> json) {
  return _BookmarkDto.fromJson(json);
}

/// @nodoc
class _$BookmarkDtoTearOff {
  const _$BookmarkDtoTearOff();

  _BookmarkDto call({required String message}) {
    return _BookmarkDto(
      message: message,
    );
  }

  BookmarkDto fromJson(Map<String, Object> json) {
    return BookmarkDto.fromJson(json);
  }
}

/// @nodoc
const $BookmarkDto = _$BookmarkDtoTearOff();

/// @nodoc
mixin _$BookmarkDto {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkDtoCopyWith<BookmarkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkDtoCopyWith<$Res> {
  factory $BookmarkDtoCopyWith(
          BookmarkDto value, $Res Function(BookmarkDto) then) =
      _$BookmarkDtoCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$BookmarkDtoCopyWithImpl<$Res> implements $BookmarkDtoCopyWith<$Res> {
  _$BookmarkDtoCopyWithImpl(this._value, this._then);

  final BookmarkDto _value;
  // ignore: unused_field
  final $Res Function(BookmarkDto) _then;

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
abstract class _$BookmarkDtoCopyWith<$Res>
    implements $BookmarkDtoCopyWith<$Res> {
  factory _$BookmarkDtoCopyWith(
          _BookmarkDto value, $Res Function(_BookmarkDto) then) =
      __$BookmarkDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$BookmarkDtoCopyWithImpl<$Res> extends _$BookmarkDtoCopyWithImpl<$Res>
    implements _$BookmarkDtoCopyWith<$Res> {
  __$BookmarkDtoCopyWithImpl(
      _BookmarkDto _value, $Res Function(_BookmarkDto) _then)
      : super(_value, (v) => _then(v as _BookmarkDto));

  @override
  _BookmarkDto get _value => super._value as _BookmarkDto;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_BookmarkDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookmarkDto extends _BookmarkDto with DiagnosticableTreeMixin {
  const _$_BookmarkDto({required this.message}) : super._();

  factory _$_BookmarkDto.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkDtoFromJson(json);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkDto(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookmarkDto'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BookmarkDtoCopyWith<_BookmarkDto> get copyWith =>
      __$BookmarkDtoCopyWithImpl<_BookmarkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkDtoToJson(this);
  }
}

abstract class _BookmarkDto extends BookmarkDto {
  const factory _BookmarkDto({required String message}) = _$_BookmarkDto;
  const _BookmarkDto._() : super._();

  factory _BookmarkDto.fromJson(Map<String, dynamic> json) =
      _$_BookmarkDto.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookmarkDtoCopyWith<_BookmarkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

BookmarkGetDto _$BookmarkGetDtoFromJson(Map<String, dynamic> json) {
  return _BookmarkGetDto.fromJson(json);
}

/// @nodoc
class _$BookmarkGetDtoTearOff {
  const _$BookmarkGetDtoTearOff();

  _BookmarkGetDto call(
      {required String id,
      required String urlToImage,
      required String title,
      required String description,
      required String sourceName,
      required String author,
      required String publishedAt,
      required String url}) {
    return _BookmarkGetDto(
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

  BookmarkGetDto fromJson(Map<String, Object> json) {
    return BookmarkGetDto.fromJson(json);
  }
}

/// @nodoc
const $BookmarkGetDto = _$BookmarkGetDtoTearOff();

/// @nodoc
mixin _$BookmarkGetDto {
  String get id => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get sourceName => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkGetDtoCopyWith<BookmarkGetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkGetDtoCopyWith<$Res> {
  factory $BookmarkGetDtoCopyWith(
          BookmarkGetDto value, $Res Function(BookmarkGetDto) then) =
      _$BookmarkGetDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String urlToImage,
      String title,
      String description,
      String sourceName,
      String author,
      String publishedAt,
      String url});
}

/// @nodoc
class _$BookmarkGetDtoCopyWithImpl<$Res>
    implements $BookmarkGetDtoCopyWith<$Res> {
  _$BookmarkGetDtoCopyWithImpl(this._value, this._then);

  final BookmarkGetDto _value;
  // ignore: unused_field
  final $Res Function(BookmarkGetDto) _then;

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
              as String,
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
abstract class _$BookmarkGetDtoCopyWith<$Res>
    implements $BookmarkGetDtoCopyWith<$Res> {
  factory _$BookmarkGetDtoCopyWith(
          _BookmarkGetDto value, $Res Function(_BookmarkGetDto) then) =
      __$BookmarkGetDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String urlToImage,
      String title,
      String description,
      String sourceName,
      String author,
      String publishedAt,
      String url});
}

/// @nodoc
class __$BookmarkGetDtoCopyWithImpl<$Res>
    extends _$BookmarkGetDtoCopyWithImpl<$Res>
    implements _$BookmarkGetDtoCopyWith<$Res> {
  __$BookmarkGetDtoCopyWithImpl(
      _BookmarkGetDto _value, $Res Function(_BookmarkGetDto) _then)
      : super(_value, (v) => _then(v as _BookmarkGetDto));

  @override
  _BookmarkGetDto get _value => super._value as _BookmarkGetDto;

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
    return _then(_BookmarkGetDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_BookmarkGetDto extends _BookmarkGetDto with DiagnosticableTreeMixin {
  const _$_BookmarkGetDto(
      {required this.id,
      required this.urlToImage,
      required this.title,
      required this.description,
      required this.sourceName,
      required this.author,
      required this.publishedAt,
      required this.url})
      : super._();

  factory _$_BookmarkGetDto.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkGetDtoFromJson(json);

  @override
  final String id;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookmarkGetDto(id: $id, urlToImage: $urlToImage, title: $title, description: $description, sourceName: $sourceName, author: $author, publishedAt: $publishedAt, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookmarkGetDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('urlToImage', urlToImage))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('sourceName', sourceName))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkGetDto &&
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
  _$BookmarkGetDtoCopyWith<_BookmarkGetDto> get copyWith =>
      __$BookmarkGetDtoCopyWithImpl<_BookmarkGetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkGetDtoToJson(this);
  }
}

abstract class _BookmarkGetDto extends BookmarkGetDto {
  const factory _BookmarkGetDto(
      {required String id,
      required String urlToImage,
      required String title,
      required String description,
      required String sourceName,
      required String author,
      required String publishedAt,
      required String url}) = _$_BookmarkGetDto;
  const _BookmarkGetDto._() : super._();

  factory _BookmarkGetDto.fromJson(Map<String, dynamic> json) =
      _$_BookmarkGetDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
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
  _$BookmarkGetDtoCopyWith<_BookmarkGetDto> get copyWith =>
      throw _privateConstructorUsedError;
}
