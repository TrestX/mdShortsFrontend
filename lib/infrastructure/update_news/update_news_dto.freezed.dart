// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateNewsDto _$UpdateNewsDtoFromJson(Map<String, dynamic> json) {
  return _UpdateNewsDto.fromJson(json);
}

/// @nodoc
class _$UpdateNewsDtoTearOff {
  const _$UpdateNewsDtoTearOff();

  _UpdateNewsDto call({required String message}) {
    return _UpdateNewsDto(
      message: message,
    );
  }

  UpdateNewsDto fromJson(Map<String, Object> json) {
    return UpdateNewsDto.fromJson(json);
  }
}

/// @nodoc
const $UpdateNewsDto = _$UpdateNewsDtoTearOff();

/// @nodoc
mixin _$UpdateNewsDto {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateNewsDtoCopyWith<UpdateNewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNewsDtoCopyWith<$Res> {
  factory $UpdateNewsDtoCopyWith(
          UpdateNewsDto value, $Res Function(UpdateNewsDto) then) =
      _$UpdateNewsDtoCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$UpdateNewsDtoCopyWithImpl<$Res>
    implements $UpdateNewsDtoCopyWith<$Res> {
  _$UpdateNewsDtoCopyWithImpl(this._value, this._then);

  final UpdateNewsDto _value;
  // ignore: unused_field
  final $Res Function(UpdateNewsDto) _then;

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
abstract class _$UpdateNewsDtoCopyWith<$Res>
    implements $UpdateNewsDtoCopyWith<$Res> {
  factory _$UpdateNewsDtoCopyWith(
          _UpdateNewsDto value, $Res Function(_UpdateNewsDto) then) =
      __$UpdateNewsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UpdateNewsDtoCopyWithImpl<$Res>
    extends _$UpdateNewsDtoCopyWithImpl<$Res>
    implements _$UpdateNewsDtoCopyWith<$Res> {
  __$UpdateNewsDtoCopyWithImpl(
      _UpdateNewsDto _value, $Res Function(_UpdateNewsDto) _then)
      : super(_value, (v) => _then(v as _UpdateNewsDto));

  @override
  _UpdateNewsDto get _value => super._value as _UpdateNewsDto;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UpdateNewsDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateNewsDto extends _UpdateNewsDto with DiagnosticableTreeMixin {
  const _$_UpdateNewsDto({required this.message}) : super._();

  factory _$_UpdateNewsDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateNewsDtoFromJson(json);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateNewsDto(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateNewsDto'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateNewsDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UpdateNewsDtoCopyWith<_UpdateNewsDto> get copyWith =>
      __$UpdateNewsDtoCopyWithImpl<_UpdateNewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateNewsDtoToJson(this);
  }
}

abstract class _UpdateNewsDto extends UpdateNewsDto {
  const factory _UpdateNewsDto({required String message}) = _$_UpdateNewsDto;
  const _UpdateNewsDto._() : super._();

  factory _UpdateNewsDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateNewsDto.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateNewsDtoCopyWith<_UpdateNewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
