import 'package:MD_Shorts/domain/auth/user.dart';
import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  // ignore: sort_unnamed_constructors_first
  const factory UserDto({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required List<String> speciality,
    required String phoneNumber,
    required String countryCode,
    required List<String> categories,
    required String urlToProfileImage,
  }) = _UserDto;

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      email: Email(email),
      firstName: FirstName(firstName),
      lastName: LastName(lastName),
      phoneNumber: PhoneNumber(phoneNumber),
      countryCode: Country(countryCode),
      categories: Categories(categories),
      speciality: Specialities(speciality),
      urlToProfileImage: urlToProfileImage.toString(),
    );
  }

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      email: user.email.getOrCrash(),
      firstName: user.firstName.getOrCrash(),
      lastName: user.lastName.getOrCrash(),
      phoneNumber: user.phoneNumber.getOrCrash(),
      countryCode: user.countryCode.getOrCrash(),
      categories: user.categories.getOrCrash(),
      speciality: user.speciality.getOrCrash(),
      urlToProfileImage: user.urlToProfileImage,
    );
  }
  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
