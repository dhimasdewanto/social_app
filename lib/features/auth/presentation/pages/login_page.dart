import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../../../../core/utils/navigators.dart';
import '../../../../core/utils/snackbars.dart';
import '../../../social/presentation/pages/social_page.dart';
import '../blocs/auth/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = getIt<AuthBloc>();

    return BlocProvider<AuthBloc>(
      create: (context) => authBloc,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (message) => showSnackbar(
              context: context,
              message: message,
            ),
            loggedIn: (user) {
              pushReplacement(
                context: context,
                page: SocialPage(
                  user: user,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Login",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  RaisedButton(
                    onPressed: () {
                      authBloc.add(const AuthEvent.login());
                    },
                    child: const Text("Sign in with Google"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
