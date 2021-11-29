part of 'category_form_bloc.dart';

@freezed
class CategoryFormEvent with _$CategoryFormEvent {
  const factory CategoryFormEvent.categoryChanged(String categoryStr) =
      _CategoryChanged;
  const factory CategoryFormEvent.addCategories(List<String> myCategories) =
      _AddCategories;
}
