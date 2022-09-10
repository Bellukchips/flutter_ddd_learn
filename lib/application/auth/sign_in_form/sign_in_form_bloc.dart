import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/auth/auth_failure.dart';
import 'package:flutter_ddd_learn/domain/auth/i_auth_facade.dart';
import 'package:flutter_ddd_learn/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';
@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade iAuthFacade;
  SignInFormBloc(this.iAuthFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(_mapEvent);
  }

  void _mapEvent(SignInFormEvent event, Emitter<SignInFormState> emit) {
    event.map(emailChanged: (e) async* {
      emit(state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccess: none()));
    }, passwordChaged: (e) async* {
      emit(state.copyWith(
          password: Password(e.passwordStr), authFailureOrSuccess: none()));
    }, registerWithEmailPassword: (e) async* {
      await _actionEmailPasswordOnAuth(
          emit,
          iAuthFacade.registerWithEmailPassword(
              email: state.emailAddress, password: state.password));
    }, signInWithEmailPassword: (e) async* {
      await _actionEmailPasswordOnAuth(
          emit,
          iAuthFacade.signInWithEmailPassword(
              email: state.emailAddress, password: state.password));
    }, signInWithGooglePressed: (e) async* {
      emit(state.copyWith(isSubmitted: true, authFailureOrSuccess: none()));
      final failureOrSuccess = await iAuthFacade.signInWithGoogle();
      emit(state.copyWith(
          isSubmitted: false, authFailureOrSuccess: some(failureOrSuccess)));
    });
  }

  Future<void> _actionEmailPasswordOnAuth(Emitter<SignInFormState> emit,
      Future<Either<AuthFailure, Unit>> forwardCall) async {
    Either<AuthFailure, Unit> failureOrSuccess = await forwardCall;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(isSubmitted: true, authFailureOrSuccess: none()));
      failureOrSuccess = await forwardCall;
    }
    emit(state.copyWith(
        isSubmitted: false,
        authFailureOrSuccess: optionOf(failureOrSuccess),
        showErrorMsg: true));
  }
}
