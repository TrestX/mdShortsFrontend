part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loadInProgress() = _LoadInProgress;
  const factory CategoriesState.loadSuccess(List<UserCategory> userCategory) =
      _LoadSuccess;
  const factory CategoriesState.loadFailure(CategoryFailure categoryFailure) =
      _LoadFailure;
}
