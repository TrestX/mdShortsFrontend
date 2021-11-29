// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserCategoryTearOff {
  const _$UserCategoryTearOff();

  _UserCategory call(
      {required UniqueId id,
      required String categoryName,
      required String imageUrl}) {
    return _UserCategory(
      id: id,
      categoryName: categoryName,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $UserCategory = _$UserCategoryTearOff();

/// @nodoc
mixin _$UserCategory {
  UniqueId get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCategoryCopyWith<UserCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCategoryCopyWith<$Res> {
  factory $UserCategoryCopyWith(
          UserCategory value, $Res Function(UserCategory) then) =
      _$UserCategoryCopyWithImpl<$Res>;
  $Res call({UniqueId id, String categoryName, String imageUrl});
}

/// @nodoc
class _$UserCategoryCopyWithImpl<$Res> implements $UserCategoryCopyWith<$Res> {
  _$UserCategoryCopyWithImpl(this._value, this._then);

  final UserCategory _value;
  // ignore: unused_field
  final $Res Function(UserCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCategoryCopyWith<$Res>
    implements $UserCategoryCopyWith<$Res> {
  factory _$UserCategoryCopyWith(
          _UserCategory value, $Res Function(_UserCategory) then) =
      __$UserCategoryCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String categoryName, String imageUrl});
}

/// @nodoc
class __$UserCategoryCopyWithImpl<$Res> extends _$UserCategoryCopyWithImpl<$Res>
    implements _$UserCategoryCopyWith<$Res> {
  __$UserCategoryCopyWithImpl(
      _UserCategory _value, $Res Function(_UserCategory) _then)
      : super(_value, (v) => _then(v as _UserCategory));

  @override
  _UserCategory get _value => super._value as _UserCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_UserCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserCategory implements _UserCategory {
  const _$_UserCategory(
      {required this.id, required this.categoryName, required this.imageUrl});

  @override
  final UniqueId id;
  @override
  final String categoryName;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UserCategory(id: $id, categoryName: $categoryName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$UserCategoryCopyWith<_UserCategory> get copyWith =>
      __$UserCategoryCopyWithImpl<_UserCategory>(this, _$identity);
}

abstract class _UserCategory implements UserCategory {
  const factory _UserCategory(
      {required UniqueId id,
      required String categoryName,
      required String imageUrl}) = _$_UserCategory;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCategoryCopyWith<_UserCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
