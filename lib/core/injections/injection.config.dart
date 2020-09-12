// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../features/auth/presentation/blocs/auth/auth_bloc.dart';
import '../../features/auth/domain/use_cases/get_signed_in_user.dart';
import 'register_modules.dart';
import '../../features/auth/domain/use_cases/sign_in_google.dart';
import '../../features/auth/domain/use_cases/sign_out.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.lazySingleton<FirebaseAuth>(() => registerModules.firebaseAuth);
  gh.lazySingleton<GoogleSignIn>(() => registerModules.googleSignIn);
  gh.lazySingleton<SignInGoogle>(() => SignInGoogle(
      firebaseAuth: get<FirebaseAuth>(), googleSignIn: get<GoogleSignIn>()));
  gh.lazySingleton<SignOut>(() => SignOut(
      firebaseAuth: get<FirebaseAuth>(), googleSignIn: get<GoogleSignIn>()));
  gh.lazySingleton<GetSignedInUser>(() => GetSignedInUser(
      firebaseAuth: get<FirebaseAuth>(), googleSignIn: get<GoogleSignIn>()));
  gh.factory<AuthBloc>(() => AuthBloc(
        getSignedInUser: get<GetSignedInUser>(),
        signInGoogle: get<SignInGoogle>(),
        signOut: get<SignOut>(),
      ));
  return get;
}

class _$RegisterModules extends RegisterModules {}
