part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChaged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.registerWithEmailPassword() =
      RegisterWithEmailPassword;
  const factory SignInFormEvent.signInWithEmailPassword() =
      SignInWithEmailPasswordString;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
