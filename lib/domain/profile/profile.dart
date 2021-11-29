import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/value_objects.dart';

part 'profile.freezed.dart';

@freezed
abstract class UserProfile with _$UserProfile implements IEntity {
  // Added constructor
  const factory UserProfile({
    required UniqueId id,
    required Email email,
    required String firstName,
    required String lastName,
    required Specialities speciality,
    required PhoneNumber phoneNumber,
    required Country countryCode,
    required List<String> categories,
    required String urlToProfileImage,
    required Map<String,String> address,
    required String about,
    required String designation,
  }) = _UserProfile;
}
