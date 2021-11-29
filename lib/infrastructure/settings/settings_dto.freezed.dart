// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsDto _$SettingsDtoFromJson(Map<String, dynamic> json) {
  return _SettingsDto.fromJson(json);
}

/// @nodoc
class _$SettingsDtoTearOff {
  const _$SettingsDtoTearOff();

  _SettingsDto call({required String message}) {
    return _SettingsDto(
      message: message,
    );
  }

  SettingsDto fromJson(Map<String, Object> json) {
    return SettingsDto.fromJson(json);
  }
}

/// @nodoc
const $SettingsDto = _$SettingsDtoTearOff();

/// @nodoc
mixin _$SettingsDto {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsDtoCopyWith<SettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDtoCopyWith<$Res> {
  factory $SettingsDtoCopyWith(
          SettingsDto value, $Res Function(SettingsDto) then) =
      _$SettingsDtoCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$SettingsDtoCopyWithImpl<$Res> implements $SettingsDtoCopyWith<$Res> {
  _$SettingsDtoCopyWithImpl(this._value, this._then);

  final SettingsDto _value;
  // ignore: unused_field
  final $Res Function(SettingsDto) _then;

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
abstract class _$SettingsDtoCopyWith<$Res>
    implements $SettingsDtoCopyWith<$Res> {
  factory _$SettingsDtoCopyWith(
          _SettingsDto value, $Res Function(_SettingsDto) then) =
      __$SettingsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$SettingsDtoCopyWithImpl<$Res> extends _$SettingsDtoCopyWithImpl<$Res>
    implements _$SettingsDtoCopyWith<$Res> {
  __$SettingsDtoCopyWithImpl(
      _SettingsDto _value, $Res Function(_SettingsDto) _then)
      : super(_value, (v) => _then(v as _SettingsDto));

  @override
  _SettingsDto get _value => super._value as _SettingsDto;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_SettingsDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsDto extends _SettingsDto with DiagnosticableTreeMixin {
  const _$_SettingsDto({required this.message}) : super._();

  factory _$_SettingsDto.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsDtoFromJson(json);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsDto(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsDto'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SettingsDtoCopyWith<_SettingsDto> get copyWith =>
      __$SettingsDtoCopyWithImpl<_SettingsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsDtoToJson(this);
  }
}

abstract class _SettingsDto extends SettingsDto {
  const factory _SettingsDto({required String message}) = _$_SettingsDto;
  const _SettingsDto._() : super._();

  factory _SettingsDto.fromJson(Map<String, dynamic> json) =
      _$_SettingsDto.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsDtoCopyWith<_SettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
