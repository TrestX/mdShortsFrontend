part of 'share_bloc.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState.initial() = _Initial;

  const factory ShareState.loadInProgress() = _LoadInProgress;
  const factory ShareState.loadSuccess(Share data) =
      _LoadSuccess;
  const factory ShareState.loadFailure(ShareFailure shareFailure) =
      _LoadFailure;
}
