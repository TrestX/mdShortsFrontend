// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'presignedurl_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PresignedUrlDto _$PresignedUrlDtoFromJson(Map<String, dynamic> json) {
  return _PresignedUrlDto.fromJson(json);
}

/// @nodoc
class _$PresignedUrlDtoTearOff {
  const _$PresignedUrlDtoTearOff();

  _PresignedUrlDto call({required String uploadurl}) {
    return _PresignedUrlDto(
      uploadurl: uploadurl,
    );
  }

  PresignedUrlDto fromJson(Map<String, Object> json) {
    return PresignedUrlDto.fromJson(json);
  }
}

/// @nodoc
const $PresignedUrlDto = _$PresignedUrlDtoTearOff();

/// @nodoc
mixin _$PresignedUrlDto {
  String get uploadurl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresignedUrlDtoCopyWith<PresignedUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresignedUrlDtoCopyWith<$Res> {
  factory $PresignedUrlDtoCopyWith(
          PresignedUrlDto value, $Res Function(PresignedUrlDto) then) =
      _$PresignedUrlDtoCopyWithImpl<$Res>;
  $Res call({String uploadurl});
}

/// @nodoc
class _$PresignedUrlDtoCopyWithImpl<$Res>
    implements $PresignedUrlDtoCopyWith<$Res> {
  _$PresignedUrlDtoCopyWithImpl(this._value, this._then);

  final PresignedUrlDto _value;
  // ignore: unused_field
  final $Res Function(PresignedUrlDto) _then;

  @override
  $Res call({
    Object? uploadurl = freezed,
  }) {
    return _then(_value.copyWith(
      uploadurl: uploadurl == freezed
          ? _value.uploadurl
          : uploadurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PresignedUrlDtoCopyWith<$Res>
    implements $PresignedUrlDtoCopyWith<$Res> {
  factory _$PresignedUrlDtoCopyWith(
          _PresignedUrlDto value, $Res Function(_PresignedUrlDto) then) =
      __$PresignedUrlDtoCopyWithImpl<$Res>;
  @override
  $Res call({String uploadurl});
}

/// @nodoc
class __$PresignedUrlDtoCopyWithImpl<$Res>
    extends _$PresignedUrlDtoCopyWithImpl<$Res>
    implements _$PresignedUrlDtoCopyWith<$Res> {
  __$PresignedUrlDtoCopyWithImpl(
      _PresignedUrlDto _value, $Res Function(_PresignedUrlDto) _then)
      : super(_value, (v) => _then(v as _PresignedUrlDto));

  @override
  _PresignedUrlDto get _value => super._value as _PresignedUrlDto;

  @override
  $Res call({
    Object? uploadurl = freezed,
  }) {
    return _then(_PresignedUrlDto(
      uploadurl: uploadurl == freezed
          ? _value.uploadurl
          : uploadurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PresignedUrlDto extends _PresignedUrlDto with DiagnosticableTreeMixin {
  const _$_PresignedUrlDto({required this.uploadurl}) : super._();

  factory _$_PresignedUrlDto.fromJson(Map<String, dynamic> json) =>
      _$$_PresignedUrlDtoFromJson(json);

  @override
  final String uploadurl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PresignedUrlDto(uploadurl: $uploadurl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PresignedUrlDto'))
      ..add(DiagnosticsProperty('uploadurl', uploadurl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PresignedUrlDto &&
            (identical(other.uploadurl, uploadurl) ||
                const DeepCollectionEquality()
                    .equals(other.uploadurl, uploadurl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uploadurl);

  @JsonKey(ignore: true)
  @override
  _$PresignedUrlDtoCopyWith<_PresignedUrlDto> get copyWith =>
      __$PresignedUrlDtoCopyWithImpl<_PresignedUrlDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresignedUrlDtoToJson(this);
  }
}

abstract class _PresignedUrlDto extends PresignedUrlDto {
  const factory _PresignedUrlDto({required String uploadurl}) =
      _$_PresignedUrlDto;
  const _PresignedUrlDto._() : super._();

  factory _PresignedUrlDto.fromJson(Map<String, dynamic> json) =
      _$_PresignedUrlDto.fromJson;

  @override
  String get uploadurl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PresignedUrlDtoCopyWith<_PresignedUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}
