part of 'category_form_bloc.dart';

@freezed
class CategoryFormState with _$CategoryFormState {
  const factory CategoryFormState({
    required List<String> id,
    required bool isEditing,
  }) = _CategoryFormState;

  factory CategoryFormState.initial() => const CategoryFormState(
        id: [],
        isEditing: false,
      );
}
