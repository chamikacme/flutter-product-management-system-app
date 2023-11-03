part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  final String token;

  const AuthState({required this.token});
}

final class AuthInitial extends AuthState {
  const AuthInitial({required super.token});
}
