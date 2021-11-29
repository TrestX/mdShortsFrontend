import 'dart:async';

import 'package:MD_Shorts/domain/bookmark/bookmark_failure.dart';
import 'package:MD_Shorts/domain/share/i_share_repository.dart';
import 'package:MD_Shorts/domain/share/share.dart';
import 'package:MD_Shorts/domain/share/share_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'share_event.dart';
part 'share_state.dart';
part 'share_bloc.freezed.dart';

@injectable
class ShareBloc extends Bloc<ShareEvent, ShareState> {
  final IShareRepository _shareRepository;
  ShareBloc(this._shareRepository) : super(const ShareState.initial());
  StreamSubscription<Either<ShareFailure, Share>>?
      _shareStreamSubscription;
  @override
  Stream<ShareState> mapEventToState(
    ShareEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ShareState.loadInProgress();
        await _shareStreamSubscription?.cancel();
        _shareStreamSubscription = _shareRepository
            .addShare(e.newsid)
            .listen((event) => add(ShareEvent.valueReceived(event)));
      },
      valueReceived: (_ValueReceived value) async* {
        yield value.failureOrValue.fold(
          (f) => ShareState.loadFailure(f),
          (value) => ShareState.loadSuccess(value),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _shareStreamSubscription?.cancel();
    return super.close();
  }
}

