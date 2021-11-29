import 'package:dartz/dartz.dart';
import 'category.dart';
import 'category_failure.dart';

abstract class ICategoryRepository {
  Stream<Either<CategoryFailure, List<UserCategory>>> getAllCategory(String? ids);
}
