part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.watchAllStarted(String? ids) = _WatchAllStarted;
  const factory CategoriesEvent.valueReceived(
    Either<CategoryFailure, List<UserCategory>> failureOrValue,
  ) = _ValueReceived;
}
