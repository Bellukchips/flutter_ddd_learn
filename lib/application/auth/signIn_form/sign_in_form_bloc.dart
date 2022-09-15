import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/auth/auth_failure.dart';
import 'package:flutter_ddd_learn/domain/auth/value_objects.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc() : super(SignInFormState.initial()) {
    on<SignInFormEvent>(_mapEvent);
  }

  Future<void> _mapEvent(
      SignInFormEvent event, Emitter<SignInFormState> emit) async {
    emit(event.map(
      emailChanged: (value) {
        final email = EmailAddress(value.emailStr);
        return state.copyWith(
          emailAddress: email,
        );
      },
      passwordChanged: (value) {
        final password = Password(value.passwordStr);

        return state.copyWith(
          password: password,
        );
      },
    ));
  }
}
