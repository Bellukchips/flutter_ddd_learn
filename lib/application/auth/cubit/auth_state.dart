part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _AuthState;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success() = _Success;
  const factory AuthState.errorMsg(String e) = _ErrorMsg;

  factory AuthState.initial() => AuthState(authFailureOrSuccessOption: none());
}
