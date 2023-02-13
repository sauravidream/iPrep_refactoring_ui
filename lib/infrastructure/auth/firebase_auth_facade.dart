import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:library_package/domain/auth/value_object.dart';
import 'firebase_user_mapper.dart';
import 'package:library_package/domain/auth/auth_failure.dart';

import 'package:dartz/dartz.dart';
import 'package:library_package/domain/core/user.dart';

import '../../domain/auth/i_auth_facade.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade extends IAuthFacade {
  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._signInWithApple);

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final SignInWithApple _signInWithApple;

  @override
  Future<Either<AuthFailure, Unit>> otpVerification({required Otp otp}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use' ||
          e.code == "email-already-in-use".toUpperCase()) {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      if (credential.identityToken == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      AuthCredential authCredential = OAuthProvider("apple.com").credential(
        idToken: credential.identityToken,
      );

      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' ||
          e.code == "wrong-password".toUpperCase() ||
          e.code == "user-not-found" ||
          e.code == "user-not-found".toUpperCase()) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuth = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumber(
      {required PhoneNumber phoneNumber}) async {
    final phoneNumberString = phoneNumber.getOrCrash();

    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: "+91$phoneNumberString",
        codeAutoRetrievalTimeout: (verificationId) {},
        verificationCompleted: (phoneAuthCredential) {
          /// TODO: After Enter Otp Get AuthCredential
        },
        codeSent: (verificationId, forceResendingToken) {
          // TODO: After Enter Mobile Number Get verificationId & forceResendingToken
        },
        verificationFailed: (error) => left(const AuthFailure.serverError()),
      );
      return right("unit" as Unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    _firebaseAuth.currentUser?.reload();
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<void> signOut() =>
      Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
}
