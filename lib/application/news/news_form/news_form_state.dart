part of 'news_form_bloc.dart';

@freezed
class NewsFormState with _$NewsFormState {
  const factory NewsFormState({
    required DateTime entryTime,
    required DateTime exitTime,
    required bool urlClicked,
    required String newsId, 
    required int lastIndex,
  }) = _NewsFormState;

  factory NewsFormState.initial() => NewsFormState(
        entryTime: DateTime.now(),
        exitTime: DateTime.now(),
        urlClicked: false,
        newsId: '',
        lastIndex: 0,
      );
}
