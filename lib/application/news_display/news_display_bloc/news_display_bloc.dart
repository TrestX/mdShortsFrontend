import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_display_event.dart';
part 'news_display_state.dart';
part 'news_display_bloc.freezed.dart';

class NewsDisplayBloc extends Bloc<NewsDisplayEvent, NewsDisplayState> {
  NewsDisplayBloc() : super(NewsDisplayState.initial());
  @override
  Stream<NewsDisplayState> mapEventToState(
    NewsDisplayEvent event,
  ) async* {
    yield* event.map(changePage: (_ChangePage value) async* {
      yield state.copyWith(
        page: value.pageNum,
      );
    }, changeShowBottomBar: (_ChangeShowBottomBar value) async* {
      yield state.copyWith(
        showBottomBar: !state.showBottomBar,
      );
    });
  }
}
