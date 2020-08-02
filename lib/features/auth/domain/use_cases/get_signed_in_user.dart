import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/use_case.dart';
import '../entities/user.dart';
import '../failures/auth_failures.dart';

@lazySingleton
class GetSignedInUser extends UseCase<User, Unit, AuthFailures> {
  GetSignedInUser({
    @required this.firebaseAuth,
    @required this.googleSignIn,
  });

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  @override
  Future<Either<AuthFailures, User>> execute(Unit params) async {
    FirebaseUser userFirebase;

    try {
      userFirebase = await firebaseAuth.currentUser();
    } on PlatformException catch (_) {
      return left(const AuthFailures.serverFailure());
    } catch (_) {
      return left(const AuthFailures.unexpected());
    }

    if (userFirebase == null) {
      return left(const AuthFailures.unauthorized());
    }

    final user = User(
      id: userFirebase.uid,
      name: userFirebase.displayName,
      email: userFirebase.email,
    );
    return right(user);
  }

  @override
  Future<Either<AuthFailures, Unit>> validate(Unit params) async {
    return right(unit);
  }
}
