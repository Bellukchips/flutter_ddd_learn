import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
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
    emit(const AuthState.loading());
    try {
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(AuthState(authFailureOrSuccessOption: some(failureOrSuccess)));
      emit(const AuthState.success());
    } on Exception catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    } on NoSuchMethodError catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    }
  }

  Future<void> registerWithEmailAndPassword(
      EmailAddress emailAddress, Password password) async {
    emit(const AuthState.loading());
    try {
      final failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: emailAddress, password: password);
    
      emit(AuthState(authFailureOrSuccessOption: some(failureOrSuccess)));
      emit(const AuthState.success());
    } on Exception catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    } on NoSuchMethodError catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    }
  }

  Future<void> signInWithEmailAndPassword(
      EmailAddress emailAddress, Password password) async {
    emit(const AuthState.loading());
    try {
      final failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          emailAddress: emailAddress, password: password);
      emit(AuthState(authFailureOrSuccessOption: some(failureOrSuccess)));
      emit(const AuthState.success());
    } on Exception catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    } on NoSuchMethodError catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    }
  }

  Future<void> logOut() async {
    emit(const AuthState.loading());
    try {
      await _authFacade.signOut();
      emit(const AuthState.success());
    } on Exception catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    } on NoSuchMethodError catch (e) {
      emit(AuthState.errorMsg(e.toString()));
    }
  }
}
