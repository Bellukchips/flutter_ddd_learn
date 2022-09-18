import 'package:bloc/bloc.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthFacade _authFacade;
  AuthenticationBloc(this._authFacade) : super(const Initial()) {
    on<AuthCheckRequested>(
      (event, emit) async {
        final userOption = await _authFacade.getSignedInUser();
        emit(userOption.fold(() => const AuthenticationState.unauthenticated(),
            (a) => const AuthenticationState.authenticated()));
      },
    );
    on<AuthSignOut>(
      (event, emit) async {
        await _authFacade.signOut();
        emit(const AuthenticationState.unauthenticated());
      },
    );
  }
}
