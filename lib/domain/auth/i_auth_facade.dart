import 'package:dartz/dartz.dart';
import './auth_failure.dart';
import './value_objects.dart';
import 'user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signIn({
    required Email email,
    required Password password,
    required bool remembeMe,
  });
  Future<Either<AuthFailure, Unit>> signUp({
    required Email email,
    required PhoneNumber phoneNumber,
    required Country countryCode,
    required Categories categories,
    required Password password,
    required Specialities speciality,
    required FirstName firstName,
    required LastName lastName,
    required bool termAndCondition,
  });
  Future<void> signOut();
}
