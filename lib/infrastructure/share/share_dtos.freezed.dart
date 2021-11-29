// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'share_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShareDto _$ShareDtoFromJson(Map<String, dynamic> json) {
  return _ShareDto.fromJson(json);
}

/// @nodoc
class _$ShareDtoTearOff {
  const _$ShareDtoTearOff();

  _ShareDto call({required String message}) {
    return _ShareDto(
      message: message,
    );
  }

  ShareDto fromJson(Map<String, Object> json) {
    return ShareDto.fromJson(json);
  }
}

/// @nodoc
const $ShareDto = _$ShareDtoTearOff();

/// @nodoc
mixin _$ShareDto {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareDtoCopyWith<ShareDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareDtoCopyWith<$Res> {
  factory $ShareDtoCopyWith(ShareDto value, $Res Function(ShareDto) then) =
      _$ShareDtoCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ShareDtoCopyWithImpl<$Res> implements $ShareDtoCopyWith<$Res> {
  _$ShareDtoCopyWithImpl(this._value, this._then);

  final ShareDto _value;
  // ignore: unused_field
  final $Res Function(ShareDto) _then;

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
abstract class _$ShareDtoCopyWith<$Res> implements $ShareDtoCopyWith<$Res> {
  factory _$ShareDtoCopyWith(_ShareDto value, $Res Function(_ShareDto) then) =
      __$ShareDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ShareDtoCopyWithImpl<$Res> extends _$ShareDtoCopyWithImpl<$Res>
    implements _$ShareDtoCopyWith<$Res> {
  __$ShareDtoCopyWithImpl(_ShareDto _value, $Res Function(_ShareDto) _then)
      : super(_value, (v) => _then(v as _ShareDto));

  @override
  _ShareDto get _value => super._value as _ShareDto;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ShareDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShareDto extends _ShareDto with DiagnosticableTreeMixin {
  const _$_ShareDto({required this.message}) : super._();

  factory _$_ShareDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShareDtoFromJson(json);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShareDto(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShareDto'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShareDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ShareDtoCopyWith<_ShareDto> get copyWith =>
      __$ShareDtoCopyWithImpl<_ShareDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShareDtoToJson(this);
  }
}

abstract class _ShareDto extends ShareDto {
  const factory _ShareDto({required String message}) = _$_ShareDto;
  const _ShareDto._() : super._();

  factory _ShareDto.fromJson(Map<String, dynamic> json) = _$_ShareDto.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareDtoCopyWith<_ShareDto> get copyWith =>
      throw _privateConstructorUsedError;
}
