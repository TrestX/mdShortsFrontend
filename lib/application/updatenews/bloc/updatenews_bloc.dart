import 'package:MD_Shorts/domain/update_news/i_update_news_repository.dart';
import 'package:MD_Shorts/domain/update_news/update_news.dart';
import 'package:MD_Shorts/domain/update_news/update_news_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'updatenews_event.dart';
part 'updatenews_state.dart';
part 'updatenews_bloc.freezed.dart';

@injectable
class UpdatenewsBloc extends Bloc<UpdatenewsEvent, UpdatenewsState> {
  final IUpdateNewsRepository _updateNewsRepository;
  UpdatenewsBloc(this._updateNewsRepository)
      : super(UpdatenewsState.initial());
  @override
  Stream<UpdatenewsState> mapEventToState(
    UpdatenewsEvent event,
  ) async* {
    yield* event.map(
      updateNews: (_UpdateNews e) async* {
        final failureOrSuccess =
            await _updateNewsRepository.updateNews(e.newsid, e.status,e.url, e.urlClicked, e.timeSpent, e.readAt);

        yield state.copyWith(
            updateNewsFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
