// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/authentication/authentication_bloc.dart' as _i16;
import 'application/auth/signIn_form/sign_in_form_bloc.dart' as _i14;
import 'application/notes/note_actor/note_actor_bloc.dart' as _i11;
import 'application/notes/note_form/note_form_bloc.dart' as _i12;
import 'application/notes/note_watcher/note_watcher_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i15;
import 'domain/domain.dart' as _i5;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/notes/note_repository.dart' as _i7;
import 'presentation/core/app.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i5.IAuthFacade>(() =>
      _i6.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i4.GoogleSignIn>()));
  gh.lazySingleton<_i5.INoteRepository>(
      () => _i7.NoteRepository(get<_i8.FirebaseFirestore>()));
  gh.factory<_i9.MyApp>(() => _i9.MyApp(key: get<_i10.Key>()));
  gh.factory<_i11.NoteActorBloc>(
      () => _i11.NoteActorBloc(get<_i5.INoteRepository>()));
  gh.factory<_i12.NoteFormBloc>(
      () => _i12.NoteFormBloc(get<_i5.INoteRepository>()));
  gh.factory<_i13.NoteWatcherBloc>(
      () => _i13.NoteWatcherBloc(get<_i5.INoteRepository>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i15.IAuthFacade>()));
  gh.factory<_i16.AuthenticationBloc>(
      () => _i16.AuthenticationBloc(get<_i5.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
