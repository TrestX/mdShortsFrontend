part of 'updatenews_bloc.dart';

@freezed
class UpdatenewsState with _$UpdatenewsState {
  const factory UpdatenewsState({
    required Option<Either<UpdateNewsFailure, UpdateNews>>
        updateNewsFailureOrSuccessOption,
  }) = _UpdatenewsState;
  factory UpdatenewsState.initial() => UpdatenewsState(
        updateNewsFailureOrSuccessOption: none(),
      );
}
