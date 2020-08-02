import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/use_case.dart';
import '../failures/auth_failures.dart';

@lazySingleton
class SignOut extends UseCase<Unit, Unit, AuthFailures> {
  SignOut({
    @required this.firebaseAuth,
    @required this.googleSignIn,
  });

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  
  @override
  Future<Either<AuthFailures, Unit>> execute(Unit params) async {
    return Future.wait([
      firebaseAuth.signOut(),
      googleSignIn.signOut(),
    ]).then((_) => right(unit));
  }

  @override
  Future<Either<AuthFailures, Unit>> validate(Unit params) async {
    return right(unit);
  }
}