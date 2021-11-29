import 'package:MD_Shorts/domain/util/presignedurl/presignedurl.dart';
import 'package:MD_Shorts/domain/util/presignedurl/presignedurl_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IPresignedUrlRepository {
  Stream<Either<PresignedUrlFailure, PresignedUrlMsg>> preSignedUrl(String? name,String? path);
}
