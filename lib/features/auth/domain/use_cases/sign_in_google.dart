import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/use_case.dart';
import '../failures/auth_failures.dart';

@lazySingleton
class SignInGoogle extends UseCase<Unit, Unit, AuthFailures> {
  SignInGoogle({
    @required this.firebaseAuth,
    @required this.googleSignIn,
  });

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  @override
  Future<Either<AuthFailures, Unit>> execute(Unit params) async {
    try {
      return _tryToSignInGoogle(params);
    } on PlatformException catch(_) {
      return left(const AuthFailures.serverFailure());
    } catch(_) {
      return left(const AuthFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> validate(Unit params) async {
    return right(unit);
  }

  Future<Either<AuthFailures, Unit>> _tryToSignInGoogle(Unit params) async {
    final googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return left(const AuthFailures.cancelledByUser());
    }

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    return firebaseAuth
        .signInWithCredential(credential)
        .then((_) => right(unit));
  }
}
