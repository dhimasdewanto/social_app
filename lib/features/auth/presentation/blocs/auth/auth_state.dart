part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.unauthorized() = _UnauthorizedState;
  const factory AuthState.error({
    @required String message,
  }) = _ErrorState;
  const factory AuthState.loggedIn({
    @required User user,
  }) = _LoggedInState;
}
