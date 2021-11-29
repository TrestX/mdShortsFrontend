// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) {
  return _NewsDto.fromJson(json);
}

/// @nodoc
class _$NewsDtoTearOff {
  const _$NewsDtoTearOff();

  _NewsDto call(
      {required String id,
      required String urlToImage,
      required String title,
      required String description,
      required String sourceName,
      required String author,
      required String publishedAt,
      required String url}) {
    return _NewsDto(
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

  NewsDto fromJson(Map<String, Object> json) {
    return NewsDto.fromJson(json);
  }
}

/// @nodoc
const $NewsDto = _$NewsDtoTearOff();

/// @nodoc
mixin _$NewsDto {
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
  $NewsDtoCopyWith<NewsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDtoCopyWith<$Res> {
  factory $NewsDtoCopyWith(NewsDto value, $Res Function(NewsDto) then) =
      _$NewsDtoCopyWithImpl<$Res>;
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
class _$NewsDtoCopyWithImpl<$Res> implements $NewsDtoCopyWith<$Res> {
  _$NewsDtoCopyWithImpl(this._value, this._then);

  final NewsDto _value;
  // ignore: unused_field
  final $Res Function(NewsDto) _then;

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
abstract class _$NewsDtoCopyWith<$Res> implements $NewsDtoCopyWith<$Res> {
  factory _$NewsDtoCopyWith(_NewsDto value, $Res Function(_NewsDto) then) =
      __$NewsDtoCopyWithImpl<$Res>;
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
class __$NewsDtoCopyWithImpl<$Res> extends _$NewsDtoCopyWithImpl<$Res>
    implements _$NewsDtoCopyWith<$Res> {
  __$NewsDtoCopyWithImpl(_NewsDto _value, $Res Function(_NewsDto) _then)
      : super(_value, (v) => _then(v as _NewsDto));

  @override
  _NewsDto get _value => super._value as _NewsDto;

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
    return _then(_NewsDto(
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
class _$_NewsDto extends _NewsDto with DiagnosticableTreeMixin {
  const _$_NewsDto(
      {required this.id,
      required this.urlToImage,
      required this.title,
      required this.description,
      required this.sourceName,
      required this.author,
      required this.publishedAt,
      required this.url})
      : super._();

  factory _$_NewsDto.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDtoFromJson(json);

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
    return 'NewsDto(id: $id, urlToImage: $urlToImage, title: $title, description: $description, sourceName: $sourceName, author: $author, publishedAt: $publishedAt, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsDto'))
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
        (other is _NewsDto &&
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
  _$NewsDtoCopyWith<_NewsDto> get copyWith =>
      __$NewsDtoCopyWithImpl<_NewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDtoToJson(this);
  }
}

abstract class _NewsDto extends NewsDto {
  const factory _NewsDto(
      {required String id,
      required String urlToImage,
      required String title,
      required String description,
      required String sourceName,
      required String author,
      required String publishedAt,
      required String url}) = _$_NewsDto;
  const _NewsDto._() : super._();

  factory _NewsDto.fromJson(Map<String, dynamic> json) = _$_NewsDto.fromJson;

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
  _$NewsDtoCopyWith<_NewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
