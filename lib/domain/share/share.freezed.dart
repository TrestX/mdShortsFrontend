// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'share.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShareTearOff {
  const _$ShareTearOff();

  _Share call({required String message}) {
    return _Share(
      message: message,
    );
  }
}

/// @nodoc
const $Share = _$ShareTearOff();

/// @nodoc
mixin _$Share {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareCopyWith<Share> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareCopyWith<$Res> {
  factory $ShareCopyWith(Share value, $Res Function(Share) then) =
      _$ShareCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ShareCopyWithImpl<$Res> implements $ShareCopyWith<$Res> {
  _$ShareCopyWithImpl(this._value, this._then);

  final Share _value;
  // ignore: unused_field
  final $Res Function(Share) _then;

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
abstract class _$ShareCopyWith<$Res> implements $ShareCopyWith<$Res> {
  factory _$ShareCopyWith(_Share value, $Res Function(_Share) then) =
      __$ShareCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ShareCopyWithImpl<$Res> extends _$ShareCopyWithImpl<$Res>
    implements _$ShareCopyWith<$Res> {
  __$ShareCopyWithImpl(_Share _value, $Res Function(_Share) _then)
      : super(_value, (v) => _then(v as _Share));

  @override
  _Share get _value => super._value as _Share;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Share(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Share implements _Share {
  const _$_Share({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Share(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Share &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ShareCopyWith<_Share> get copyWith =>
      __$ShareCopyWithImpl<_Share>(this, _$identity);
}

abstract class _Share implements Share {
  const factory _Share({required String message}) = _$_Share;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareCopyWith<_Share> get copyWith => throw _privateConstructorUsedError;
}
