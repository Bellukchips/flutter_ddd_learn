import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/auth/auth_failure.dart';
import 'package:flutter_ddd_learn/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailPassword(
      {required EmailAddress email, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithEmailPassword(
      {required EmailAddress email, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, String>> returnAValueString();
}
