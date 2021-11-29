import 'package:dartz/dartz.dart';
import 'share.dart';
import 'share_failure.dart';

abstract class IShareRepository {
  Stream<Either<ShareFailure,Share>> addShare(String? newsId);
}
