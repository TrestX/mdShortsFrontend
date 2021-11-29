import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:MD_Shorts/domain/profile/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dtos.freezed.dart';
part 'profile_dtos.g.dart';

@freezed
abstract class UserProfileDto implements _$UserProfileDto {
  const UserProfileDto._();

  // ignore: sort_unnamed_constructors_first
  const factory UserProfileDto({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required List<String> speciality,
    required String phoneNumber,
    required String countryCode,
    required String urlToProfileImage,
    required Map<String,String> address,
    required String about,
    required String designation,
    required List<String> categories,
  }) = _UserProfileDto;

  UserProfile toDomain() {
    return UserProfile(
      id: UniqueId.fromUniqueString(id),
      email: Email(email),
      firstName: firstName,
      lastName: lastName,
      phoneNumber: PhoneNumber(phoneNumber),
      countryCode: Country(countryCode),
      categories: categories,
      speciality: Specialities(speciality),
      urlToProfileImage: urlToProfileImage,
      address: address,
      about: about,
      designation: designation,
    );
  }
  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);
}
