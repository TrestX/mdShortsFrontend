// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
class _$UserProfileDtoTearOff {
  const _$UserProfileDtoTearOff();

  _UserProfileDto call(
      {required String id,
      required String email,
      required String firstName,
      required String lastName,
      required List<String> speciality,
      required String phoneNumber,
      required String countryCode,
      required String urlToProfileImage,
      required Map<String, String> address,
      required String about,
      required String designation,
      required List<String> categories}) {
    return _UserProfileDto(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      speciality: speciality,
      phoneNumber: phoneNumber,
      countryCode: countryCode,
      urlToProfileImage: urlToProfileImage,
      address: address,
      about: about,
      designation: designation,
      categories: categories,
    );
  }

  UserProfileDto fromJson(Map<String, Object> json) {
    return UserProfileDto.fromJson(json);
  }
}

/// @nodoc
const $UserProfileDto = _$UserProfileDtoTearOff();

/// @nodoc
mixin _$UserProfileDto {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  List<String> get speciality => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get urlToProfileImage => throw _privateConstructorUsedError;
  Map<String, String> get address => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      List<String> speciality,
      String phoneNumber,
      String countryCode,
      String urlToProfileImage,
      Map<String, String> address,
      String about,
      String designation,
      List<String> categories});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  final UserProfileDto _value;
  // ignore: unused_field
  final $Res Function(UserProfileDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? speciality = freezed,
    Object? phoneNumber = freezed,
    Object? countryCode = freezed,
    Object? urlToProfileImage = freezed,
    Object? address = freezed,
    Object? about = freezed,
    Object? designation = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      urlToProfileImage: urlToProfileImage == freezed
          ? _value.urlToProfileImage
          : urlToProfileImage // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(
          _UserProfileDto value, $Res Function(_UserProfileDto) then) =
      __$UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      List<String> speciality,
      String phoneNumber,
      String countryCode,
      String urlToProfileImage,
      Map<String, String> address,
      String about,
      String designation,
      List<String> categories});
}

/// @nodoc
class __$UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(
      _UserProfileDto _value, $Res Function(_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _UserProfileDto));

  @override
  _UserProfileDto get _value => super._value as _UserProfileDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? speciality = freezed,
    Object? phoneNumber = freezed,
    Object? countryCode = freezed,
    Object? urlToProfileImage = freezed,
    Object? address = freezed,
    Object? about = freezed,
    Object? designation = freezed,
    Object? categories = freezed,
  }) {
    return _then(_UserProfileDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      urlToProfileImage: urlToProfileImage == freezed
          ? _value.urlToProfileImage
          : urlToProfileImage // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileDto extends _UserProfileDto with DiagnosticableTreeMixin {
  const _$_UserProfileDto(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.speciality,
      required this.phoneNumber,
      required this.countryCode,
      required this.urlToProfileImage,
      required this.address,
      required this.about,
      required this.designation,
      required this.categories})
      : super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDtoFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final List<String> speciality;
  @override
  final String phoneNumber;
  @override
  final String countryCode;
  @override
  final String urlToProfileImage;
  @override
  final Map<String, String> address;
  @override
  final String about;
  @override
  final String designation;
  @override
  final List<String> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileDto(id: $id, email: $email, firstName: $firstName, lastName: $lastName, speciality: $speciality, phoneNumber: $phoneNumber, countryCode: $countryCode, urlToProfileImage: $urlToProfileImage, address: $address, about: $about, designation: $designation, categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('speciality', speciality))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('urlToProfileImage', urlToProfileImage))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.speciality, speciality) ||
                const DeepCollectionEquality()
                    .equals(other.speciality, speciality)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.urlToProfileImage, urlToProfileImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlToProfileImage, urlToProfileImage)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)) &&
            (identical(other.designation, designation) ||
                const DeepCollectionEquality()
                    .equals(other.designation, designation)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(speciality) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(urlToProfileImage) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(about) ^
      const DeepCollectionEquality().hash(designation) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const factory _UserProfileDto(
      {required String id,
      required String email,
      required String firstName,
      required String lastName,
      required List<String> speciality,
      required String phoneNumber,
      required String countryCode,
      required String urlToProfileImage,
      required Map<String, String> address,
      required String about,
      required String designation,
      required List<String> categories}) = _$_UserProfileDto;
  const _UserProfileDto._() : super._();

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  List<String> get speciality => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get countryCode => throw _privateConstructorUsedError;
  @override
  String get urlToProfileImage => throw _privateConstructorUsedError;
  @override
  Map<String, String> get address => throw _privateConstructorUsedError;
  @override
  String get about => throw _privateConstructorUsedError;
  @override
  String get designation => throw _privateConstructorUsedError;
  @override
  List<String> get categories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
