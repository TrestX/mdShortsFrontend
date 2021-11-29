part of 'news_form_bloc.dart';

@freezed
class NewsFormEvent with _$NewsFormEvent {
  const factory NewsFormEvent.initialized() = _Initialized;
  const factory NewsFormEvent.changeLastIndex(int index) = _ChangeLastIndex;
  const factory NewsFormEvent.changeEntryTime(DateTime eTime) =
      _ChangeEntryTime;
  const factory NewsFormEvent.changeExitTime(DateTime exTime) = _ChangeExitTime;
  const factory NewsFormEvent.changeUrlClicked(bool val) = _ChangeUrlClicked;
  const factory NewsFormEvent.changeNewsId(String newsId) = _ChangeNewsId;
}
