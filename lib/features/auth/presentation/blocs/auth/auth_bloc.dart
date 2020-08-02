import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/user.dart';
import '../../../domain/failures/auth_failures.dart';
import '../../../domain/use_cases/get_signed_in_user.dart';
import '../../../domain/use_cases/sign_in_google.dart';
import '../../../domain/use_cases/sign_out.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    @required this.getSignedInUser,
    @required this.signInGoogle,
    @required this.signOut,
  }) : super(const AuthState.unauthorized());

  final GetSignedInUser getSignedInUser;
  final SignInGoogle signInGoogle;
  final SignOut signOut;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      login: () async* {
        final res = await signInGoogle(unit);
        yield* res.fold(
          (failures) async* {
            yield _mapFailures(failures);
          },
          (user) async* {
            final res = await getSignedInUser(unit);
            yield res.fold(
              (failures) => _mapFailures(failures),
              (user) => AuthState.loggedIn(user: user),
            );
          },
        );
      },
      logout: () async* {},
      checkIsLoggedIn: () async* {
        final res = await getSignedInUser(unit);
        yield res.fold(
          (failures) => _mapFailures(failures),
          (user) => AuthState.loggedIn(user: user),
        );
      },
    );
  }

  AuthState _mapFailures(AuthFailures failures) {
    return failures.when(
      cancelledByUser: () =>
          const AuthState.error(message: "Cancelled by user"),
      serverFailure: () => const AuthState.error(message: "Server 500"),
      unexpected: () => const AuthState.error(message: "Unexpected Error"),
      unauthorized: () => const AuthState.unauthorized(),
    );
  }
}
