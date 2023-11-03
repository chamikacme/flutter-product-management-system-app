part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}


class TokenChanged extends AuthEvent {
  final String token;

  TokenChanged({required this.token});
}