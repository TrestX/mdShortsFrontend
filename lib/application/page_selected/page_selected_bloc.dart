import 'package:MD_Shorts/shared_preferences/news_index_shared.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'page_selected_event.dart';
part 'page_selected_state.dart';
part 'page_selected_bloc.freezed.dart';

@injectable
class PageSelectedBloc extends Bloc<PageSelectedEvent, PageSelectedState> {
  PageSelectedBloc() : super(PageSelectedState.initial());
  @override
  Stream<PageSelectedState> mapEventToState(
    PageSelectedEvent event,
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
    );
  }
}
