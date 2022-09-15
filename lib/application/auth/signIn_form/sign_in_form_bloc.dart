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
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(_mapEvent);
  }

  Future<void> _mapEvent(
      SignInFormEvent event, Emitter<SignInFormState> emit) async {
    event.map(emailChanged: (value) {
      final email = EmailAddress(value.emailStr);
      emit(state.copyWith(
        emailAddress: email,
      ));
    }, passwordChanged: (value) {
      final password = Password(value.passwordStr);
      emit(state.copyWith(
        password: password,
      ));
    }, registerWithEmailAndPasswordPressed: (value) async {
      Either<AuthFailure, Unit> failureOrSuccess =
          await _authFacade.registerWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));

        failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress, password: state.password);
      }
      emit(state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess)));
    }, signInWithEmailAndPasswordPressed: (value) async {
      Either<AuthFailure, Unit> failureOrSuccess =
          await _authFacade.signInWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));

        failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress, password: state.password);
      }
      emit(state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess)));
    }, signInWithGooglePressed: (value) async {
      try {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess)));
      } catch (e) {
        emit(state.copyWith(
            showErrorMessages: true, authFailureOrSuccessOption: none()));
      }
    });
  }
}
