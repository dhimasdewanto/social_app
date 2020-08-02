import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../../../../core/utils/navigators.dart';
import '../../../../core/utils/snackbars.dart';
import '../../../auth/presentation/blocs/auth/auth_bloc.dart';
import '../../../auth/presentation/pages/login_page.dart';
import '../../../social/presentation/pages/social_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = getIt<AuthBloc>()..add(const AuthEvent.checkIsLoggedIn());

    return BlocProvider<AuthBloc>(
      create: (context) => authBloc,
      child: Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
          cubit: authBloc,
          listener: (context, state) {
            state.when(
              error: (message) => showSnackbar(
                context: context,
                message: message,
              ),
              unauthorized: () {
                pushReplacement(
                  context: context,
                  page: const LoginPage(),
                );
              },
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
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
