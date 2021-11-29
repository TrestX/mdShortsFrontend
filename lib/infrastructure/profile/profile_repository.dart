import 'package:MD_Shorts/apis/profile_api.dart';
import 'package:MD_Shorts/domain/profile/i_profile_repository.dart';
import 'package:MD_Shorts/domain/profile/profile.dart';
import 'package:MD_Shorts/domain/profile/profile_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final ProfileApiClient _profileApi;
  ProfileRepository(this._profileApi);

  @override
  Stream<Either<ProfileFailure, UserProfile>> getAllProfile() async* {
    final result = await _profileApi.getProfile();
    yield result.fold(
      (failure) {
        return Left(failure);
      },
      (profileData) {
        return Right(profileData);
      },
    );
  }
  @override
  Future<Either<ProfileFailure, String>> updateProfile(String fname, String lname, String about, String designation,String address, String city, String state, String country, String pincode, List<String> specialities) async {
    final result = await _profileApi.updateProfile(fname, lname, about, designation,specialities,address,city,state,country,pincode,[]);
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (data) {
        return Right(data);
      },
    );
  }
  @override
  Future<Either<ProfileFailure, String>> updateProfileCategory(List<String> category) async {
    final result = await _profileApi.updateProfile("", "", "", "",[],"","","","","",category);
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (data) {
        return Right(data);
      },
    );
  }

  
  @override
  Stream<Either<ProfileFailure, UserProfile>> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

}
