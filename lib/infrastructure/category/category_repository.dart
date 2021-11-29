import 'package:MD_Shorts/apis/category_api.dart';
import 'package:MD_Shorts/domain/category/category.dart';
import 'package:MD_Shorts/domain/category/category_failure.dart';
import 'package:MD_Shorts/domain/category/i_category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final CategoryApiClient _categoryApi;
  CategoryRepository(this._categoryApi);

  @override
  Stream<Either<CategoryFailure, List<UserCategory>>> getAllCategory(String? id) async* {
    Either<CategoryFailure, List<UserCategory>> result;
    if (id!=""){
        result = await _categoryApi.getCategorybyId(id);
    }else{
        result = await _categoryApi.getCategory();
    }
    
    yield result.fold(
      (failure) {
        return Left(failure);
      },
      (categoriesData) {
        return Right(categoriesData);
      },
    );
  }
}
