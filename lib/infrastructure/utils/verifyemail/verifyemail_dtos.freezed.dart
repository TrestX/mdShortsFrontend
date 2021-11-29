// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verifyemail_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyEmailDto _$VerifyEmailDtoFromJson(Map<String, dynamic> json) {
  return _VerifyEmailDto.fromJson(json);
}

/// @nodoc
class _$VerifyEmailDtoTearOff {
  const _$VerifyEmailDtoTearOff();

  _VerifyEmailDto call({required String message}) {
    return _VerifyEmailDto(
      message: message,
    );
  }

  VerifyEmailDto fromJson(Map<String, Object> json) {
    return VerifyEmailDto.fromJson(json);
  }
}

/// @nodoc
const $VerifyEmailDto = _$VerifyEmailDtoTearOff();

/// @nodoc
mixin _$VerifyEmailDto {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyEmailDtoCopyWith<VerifyEmailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailDtoCopyWith<$Res> {
  factory $VerifyEmailDtoCopyWith(
          VerifyEmailDto value, $Res Function(VerifyEmailDto) then) =
      _$VerifyEmailDtoCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$VerifyEmailDtoCopyWithImpl<$Res>
    implements $VerifyEmailDtoCopyWith<$Res> {
  _$VerifyEmailDtoCopyWithImpl(this._value, this._then);

  final VerifyEmailDto _value;
  // ignore: unused_field
  final $Res Function(VerifyEmailDto) _then;

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
abstract class _$VerifyEmailDtoCopyWith<$Res>
    implements $VerifyEmailDtoCopyWith<$Res> {
  factory _$VerifyEmailDtoCopyWith(
          _VerifyEmailDto value, $Res Function(_VerifyEmailDto) then) =
      __$VerifyEmailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$VerifyEmailDtoCopyWithImpl<$Res>
    extends _$VerifyEmailDtoCopyWithImpl<$Res>
    implements _$VerifyEmailDtoCopyWith<$Res> {
  __$VerifyEmailDtoCopyWithImpl(
      _VerifyEmailDto _value, $Res Function(_VerifyEmailDto) _then)
      : super(_value, (v) => _then(v as _VerifyEmailDto));

  @override
  _VerifyEmailDto get _value => super._value as _VerifyEmailDto;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_VerifyEmailDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyEmailDto extends _VerifyEmailDto with DiagnosticableTreeMixin {
  const _$_VerifyEmailDto({required this.message}) : super._();

  factory _$_VerifyEmailDto.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyEmailDtoFromJson(json);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VerifyEmailDto(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VerifyEmailDto'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyEmailDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailDtoCopyWith<_VerifyEmailDto> get copyWith =>
      __$VerifyEmailDtoCopyWithImpl<_VerifyEmailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyEmailDtoToJson(this);
  }
}

abstract class _VerifyEmailDto extends VerifyEmailDto {
  const factory _VerifyEmailDto({required String message}) = _$_VerifyEmailDto;
  const _VerifyEmailDto._() : super._();

  factory _VerifyEmailDto.fromJson(Map<String, dynamic> json) =
      _$_VerifyEmailDto.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyEmailDtoCopyWith<_VerifyEmailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
