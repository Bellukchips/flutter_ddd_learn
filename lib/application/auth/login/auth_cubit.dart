import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthFacade _authFacade;
  AuthCubit(
    this._authFacade,
  ) : super(AuthState.initial());

  Future<void> signInWithGoogle() async {
    emit(const AuthState(status: FormzStatus.submissionInProgress));
    emit(const AuthState.loading());
    try {
      await _authFacade.signInWithGoogle();
      emit(const AuthState(status: FormzStatus.submissionSuccess));
      emit(const AuthState.success());
    } on Exception catch (e) {
      emit(const AuthState(status: FormzStatus.submissionFailure));
      emit(AuthState.errorMsg(e.toString()));
    } on NoSuchMethodError catch (e) {
      emit(const AuthState(status: FormzStatus.submissionFailure));
      emit(AuthState.errorMsg(e.toString()));
    }
  }

  Future<void> registerWithEmailAndPassword(
      EmailAddress emailAddress, Password password) async {
    emit(const AuthState(status: FormzStatus.submissionInProgress));
    emit(const AuthState.loading());
    try {
      await _authFacade.registerWithEmailAndPassword(
          emailAddress: emailAddress, password: password);
      emit(const AuthState(status: FormzStatus.submissionSuccess));
      emit(const AuthState.success());
    } on Exception catch (e) {
      emit(const AuthState(status: FormzStatus.submissionFailure));
      emit(AuthState.errorMsg(e.toString()));
    } on NoSuchMethodError catch (e) {
      emit(const AuthState(status: FormzStatus.submissionFailure));
      emit(AuthState.errorMsg(e.toString()));
    }
  }

  Future<void> signInWithEmailAndPassword(
      EmailAddress emailAddress, Password password) async {
    emit(const AuthState(status: FormzStatus.submissionInProgress));

    emit(const AuthState.loading());
    try {
      await _authFacade.signInWithEmailAndPassword(
          emailAddress: emailAddress, password: password);
      emit(const AuthState(status: FormzStatus.submissionInProgress));
      emit(const AuthState.success());
    } on Exception catch (e) {
      emit(const AuthState(status: FormzStatus.submissionSuccess));
      emit(AuthState.errorMsg(e.toString()));
    } on NoSuchMethodError catch (e) {
      emit(const AuthState(status: FormzStatus.submissionFailure));
      emit(AuthState.errorMsg(e.toString()));
    }
  }
}
