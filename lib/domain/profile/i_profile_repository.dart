import 'package:dartz/dartz.dart';
import 'profile.dart';
import 'profile_failure.dart';

abstract class IProfileRepository {
  Stream<Either<ProfileFailure,UserProfile>> getAllProfile();
  Future<Either<ProfileFailure, String>> updateProfile(String fname, String lname, String about, String designation,String address, String city, String state, String country, String pincode,List<String> specialities);
  Future<Either<ProfileFailure, String>> updateProfileCategory(List<String> category);
}
