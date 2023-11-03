import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial(token: 'no token')) {
    on<AuthEvent>((event, emit) {
      if (event is TokenChanged) {
        emit(AuthInitial(token: event.token));
      }
    });
  }
}
