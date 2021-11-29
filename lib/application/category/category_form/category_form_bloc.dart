import 'package:MD_Shorts/application/auth/sign_in/sign_in_bloc.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_form_event.dart';
part 'category_form_state.dart';
part 'category_form_bloc.freezed.dart';

@injectable
class CategoryFormBloc extends Bloc<CategoryFormEvent, CategoryFormState> {
  CategoryFormBloc() : super(CategoryFormState.initial());
  @override
  Stream<CategoryFormState> mapEventToState(
    CategoryFormEvent event,
  ) async* {
    yield* event.map(
      addCategories: (_AddCategories cat) async* {
        yield state.copyWith(
          id: List.from(cat.myCategories),
        );
      },
      categoryChanged: (_CategoryChanged value) async* {
        var id = List.from(state.id);
        if (id.isEmpty) {
          id.add(value.categoryStr);
          yield state.copyWith(
            id: List.from(id),
          );
        } else if (id.contains(value.categoryStr)) {
          id.remove(value.categoryStr);
          yield state.copyWith(
            id: List.from(id),
          );
        } else {
          id.add(value.categoryStr);
          yield state.copyWith(
            id: List.from(id),
          );
        }
      },
    );
  }
}
