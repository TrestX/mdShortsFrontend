import 'dart:async';

import 'package:MD_Shorts/domain/category/category.dart';
import 'package:MD_Shorts/domain/category/category_failure.dart';
import 'package:MD_Shorts/domain/category/i_category_repository.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final ICategoryRepository _categoryRepository;
  CategoriesBloc(this._categoryRepository)
      : super(const CategoriesState.initial());
  StreamSubscription<Either<CategoryFailure, List<UserCategory>>>?
      _categoryStreamSubscription;
  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CategoriesState.loadInProgress();
        await _categoryStreamSubscription?.cancel();
        String id;
        List<String> ids;
        if (e.ids==""){
          ids = await ProfileNotifier().getCategories();
          id = ids.join(",");
        }else{
          id = e.ids!;
        }
        _categoryStreamSubscription = _categoryRepository
            .getAllCategory(id)
            .listen((event) => add(CategoriesEvent.valueReceived(event)));
      },
      valueReceived: (_ValueReceived value) async* {
        yield value.failureOrValue.fold(
          (f) => CategoriesState.loadFailure(f),
          (value) => CategoriesState.loadSuccess(value),
        );
      },
    );
  }
  @override
  Future<void> close() {
    _categoryStreamSubscription?.cancel();
    return super.close();
  }
}
