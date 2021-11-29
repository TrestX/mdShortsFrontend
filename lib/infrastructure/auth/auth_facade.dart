import 'package:MD_Shorts/domain/auth/auth_failure.dart';
import 'package:MD_Shorts/domain/auth/i_auth_facade.dart';
import 'package:MD_Shorts/domain/auth/user.dart';
import 'package:MD_Shorts/apis/auth_api.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:dartz/dartz.dart';
import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFaccade implements IAuthFacade {
  final AuthApiClient _authApi;
  AuthFaccade(this._authApi);

  @override
  Future<Option<User>> getSignedInUser() async {
    var profN = ProfileNotifier();
    var userID = UniqueId(profN.getUserId());
    var email = await profN.getEmail();
    if (email == "") {
      return optionOf(null);
    }
    return optionOf(User(
        id: userID,
        email: Email(email),
        firstName: FirstName(await profN.getFirstName()),
        lastName: LastName(await profN.getLastName()),
        speciality: Specialities(await profN.getSpecialities()),
        phoneNumber: PhoneNumber(await profN.getPhoneNumber()),
        countryCode: Country(await profN.getCountry()),
        categories: Categories(await profN.getCategories()),
        urlToProfileImage: await profN.getAvatarUrl()));
  }

  @override
  Future<void> signOut() {
    // ignore: todo
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(
      {required Email email,
      required Password password,
      required bool remembeMe}) async {
    final result = await _authApi.signIn(
      email.getOrCrash(),
      password.getOrCrash(),
    );
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (userData) {
        ProfileNotifier().setProfile(
          userData.id.getOrCrash(),
          userData.email.getOrCrash(),
          userData.firstName.getOrCrash(),
          userData.lastName.getOrCrash(),
          userData.phoneNumber.getOrCrash(),
          userData.countryCode.getOrCrash(),
          userData.urlToProfileImage,
          userData.categories.getOrCrash(),
          userData.speciality.getOrCrash(),
        );
        return const Right(unit);
      },
    );
  }

  @override
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
  }) async {
    final result = await _authApi.signUp(
      email.getOrCrash(),
      firstName.getOrCrash(),
      lastName.getOrCrash(),
      phoneNumber.getOrCrash(),
      countryCode.getOrCrash(),
      password.getOrCrash(),
      speciality.getOrCrash(),
      categories.getOrCrash(),
      termAndCondition,
    );
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (userData) {
        ProfileNotifier().setProfile(
          "none",
          email.getOrCrash(),
          firstName.getOrCrash(),
          lastName.getOrCrash(),
          phoneNumber.getOrCrash(),
          countryCode.getOrCrash(),
          '',
          categories.getOrCrash(),
          speciality.getOrCrash(),
        );
        return const Right(unit);
      },
    );
  }
}
