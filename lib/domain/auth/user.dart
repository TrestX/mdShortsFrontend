import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  // Added constructor
  const factory User({
    required UniqueId id,
    required Email email,
    required FirstName firstName,
    required LastName lastName,
    required Specialities speciality,
    required PhoneNumber phoneNumber,
    required Country countryCode,
    required Categories categories,
    required String urlToProfileImage,
  }) = _User;
}
