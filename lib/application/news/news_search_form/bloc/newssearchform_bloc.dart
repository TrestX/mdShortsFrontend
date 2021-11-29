import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'newssearchform_event.dart';
part 'newssearchform_state.dart';
part 'newssearchform_bloc.freezed.dart';

@injectable
class NewssearchformBloc extends Bloc<NewssearchformEvent, NewssearchformState> {
  NewssearchformBloc() : super(NewssearchformState.initial()); 
  @override
  Stream<NewssearchformState> mapEventToState(
    NewssearchformEvent event,
  ) async* {
    yield* event.map(
      changeSearch: (_ChangeSearch value) async* {
        print(value);
        yield state.copyWith(
          search: value.search,
        );
      },
    );
  }
}

