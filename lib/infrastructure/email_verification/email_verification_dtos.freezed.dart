// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_verification_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailDto _$EmailDtoFromJson(Map<String, dynamic> json) {
  return _EmailDto.fromJson(json);
}

/// @nodoc
class _$EmailDtoTearOff {
  const _$EmailDtoTearOff();

  _EmailDto call({required String message}) {
    return _EmailDto(
      message: message,
    );
  }

  EmailDto fromJson(Map<String, Object> json) {
    return EmailDto.fromJson(json);
  }
}

/// @nodoc
const $EmailDto = _$EmailDtoTearOff();

/// @nodoc
mixin _$EmailDto {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailDtoCopyWith<EmailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailDtoCopyWith<$Res> {
  factory $EmailDtoCopyWith(EmailDto value, $Res Function(EmailDto) then) =
      _$EmailDtoCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$EmailDtoCopyWithImpl<$Res> implements $EmailDtoCopyWith<$Res> {
  _$EmailDtoCopyWithImpl(this._value, this._then);

  final EmailDto _value;
  // ignore: unused_field
  final $Res Function(EmailDto) _then;

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
abstract class _$EmailDtoCopyWith<$Res> implements $EmailDtoCopyWith<$Res> {
  factory _$EmailDtoCopyWith(_EmailDto value, $Res Function(_EmailDto) then) =
      __$EmailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$EmailDtoCopyWithImpl<$Res> extends _$EmailDtoCopyWithImpl<$Res>
    implements _$EmailDtoCopyWith<$Res> {
  __$EmailDtoCopyWithImpl(_EmailDto _value, $Res Function(_EmailDto) _then)
      : super(_value, (v) => _then(v as _EmailDto));

  @override
  _EmailDto get _value => super._value as _EmailDto;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_EmailDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailDto extends _EmailDto {
  const _$_EmailDto({required this.message}) : super._();

  factory _$_EmailDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmailDtoFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'EmailDto(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$EmailDtoCopyWith<_EmailDto> get copyWith =>
      __$EmailDtoCopyWithImpl<_EmailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailDtoToJson(this);
  }
}

abstract class _EmailDto extends EmailDto {
  const factory _EmailDto({required String message}) = _$_EmailDto;
  const _EmailDto._() : super._();

  factory _EmailDto.fromJson(Map<String, dynamic> json) = _$_EmailDto.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailDtoCopyWith<_EmailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
