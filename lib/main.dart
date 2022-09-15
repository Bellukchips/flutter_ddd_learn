import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/injection.dart';
import 'package:flutter_ddd_learn/presentation/core/app.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthenticationBloc>()
            ..add(const AuthenticationEvent.authCheckRequested()),
        ),
      ],
      child: MyApp(),
    ),
  );
}
