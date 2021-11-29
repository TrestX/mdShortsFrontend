import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'changepassword_event.dart';
part 'changepassword_state.dart';
part 'changepassword_bloc.freezed.dart';

@injectable
class ChangepasswordBloc extends Bloc<ChangepasswordEvent, ChangepasswordState> {

  ChangepasswordBloc() : super(ChangepasswordState.initial());

  @override
  Stream<ChangepasswordState> mapEventToState(
    ChangepasswordEvent event,
  ) async* {
    yield* event.map(
      changeEemail: (_ChangeEemail value) async* {
        yield state.copyWith(
          email: Email(value.emailStr),
        );
      },
      changePpassword: (_ChangePpassword value) async* {
        yield state.copyWith(
          password: Password(value.passwordStr),
        );
      },
    );
  }
}