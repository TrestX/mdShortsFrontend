import 'package:MD_Shorts/shared_preferences/news_index_shared.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_form_event.dart';
part 'news_form_state.dart';
part 'news_form_bloc.freezed.dart';

@injectable
class NewsFormBloc extends Bloc<NewsFormEvent, NewsFormState> {
  NewsFormBloc() : super(NewsFormState.initial());
  @override
  Stream<NewsFormState> mapEventToState(
    NewsFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          lastIndex: await NewsIndexShared.getLastIndex(),
        );
      },
      changeLastIndex: (_ChangeLastIndex value) async* {
        NewsIndexShared.setLastIndex(value.index);
        yield state.copyWith(
          lastIndex: value.index,
        );
      },
      changeEntryTime: (_ChangeEntryTime value) async* {
        yield state.copyWith(
          entryTime: value.eTime,
        );
      },
      changeExitTime: (_ChangeExitTime value) async* {
        yield state.copyWith(
          exitTime: value.exTime,
        );
      },
      changeUrlClicked: (_ChangeUrlClicked value) async* {
        yield state.copyWith(
          urlClicked: value.val,
        );
      },
      changeNewsId: (_ChangeNewsId value) async* {
        yield state.copyWith(
          newsId: value.newsId,
        );
      },
    );
  }
}
