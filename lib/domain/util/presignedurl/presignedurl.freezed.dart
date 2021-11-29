// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'presignedurl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PresignedUrlMsgTearOff {
  const _$PresignedUrlMsgTearOff();

  _PresignedUrlMsg call({required String uploadurl}) {
    return _PresignedUrlMsg(
      uploadurl: uploadurl,
    );
  }
}

/// @nodoc
const $PresignedUrlMsg = _$PresignedUrlMsgTearOff();

/// @nodoc
mixin _$PresignedUrlMsg {
  String get uploadurl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresignedUrlMsgCopyWith<PresignedUrlMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresignedUrlMsgCopyWith<$Res> {
  factory $PresignedUrlMsgCopyWith(
          PresignedUrlMsg value, $Res Function(PresignedUrlMsg) then) =
      _$PresignedUrlMsgCopyWithImpl<$Res>;
  $Res call({String uploadurl});
}

/// @nodoc
class _$PresignedUrlMsgCopyWithImpl<$Res>
    implements $PresignedUrlMsgCopyWith<$Res> {
  _$PresignedUrlMsgCopyWithImpl(this._value, this._then);

  final PresignedUrlMsg _value;
  // ignore: unused_field
  final $Res Function(PresignedUrlMsg) _then;

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
abstract class _$PresignedUrlMsgCopyWith<$Res>
    implements $PresignedUrlMsgCopyWith<$Res> {
  factory _$PresignedUrlMsgCopyWith(
          _PresignedUrlMsg value, $Res Function(_PresignedUrlMsg) then) =
      __$PresignedUrlMsgCopyWithImpl<$Res>;
  @override
  $Res call({String uploadurl});
}

/// @nodoc
class __$PresignedUrlMsgCopyWithImpl<$Res>
    extends _$PresignedUrlMsgCopyWithImpl<$Res>
    implements _$PresignedUrlMsgCopyWith<$Res> {
  __$PresignedUrlMsgCopyWithImpl(
      _PresignedUrlMsg _value, $Res Function(_PresignedUrlMsg) _then)
      : super(_value, (v) => _then(v as _PresignedUrlMsg));

  @override
  _PresignedUrlMsg get _value => super._value as _PresignedUrlMsg;

  @override
  $Res call({
    Object? uploadurl = freezed,
  }) {
    return _then(_PresignedUrlMsg(
      uploadurl: uploadurl == freezed
          ? _value.uploadurl
          : uploadurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PresignedUrlMsg implements _PresignedUrlMsg {
  const _$_PresignedUrlMsg({required this.uploadurl});

  @override
  final String uploadurl;

  @override
  String toString() {
    return 'PresignedUrlMsg(uploadurl: $uploadurl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PresignedUrlMsg &&
            (identical(other.uploadurl, uploadurl) ||
                const DeepCollectionEquality()
                    .equals(other.uploadurl, uploadurl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uploadurl);

  @JsonKey(ignore: true)
  @override
  _$PresignedUrlMsgCopyWith<_PresignedUrlMsg> get copyWith =>
      __$PresignedUrlMsgCopyWithImpl<_PresignedUrlMsg>(this, _$identity);
}

abstract class _PresignedUrlMsg implements PresignedUrlMsg {
  const factory _PresignedUrlMsg({required String uploadurl}) =
      _$_PresignedUrlMsg;

  @override
  String get uploadurl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PresignedUrlMsgCopyWith<_PresignedUrlMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
