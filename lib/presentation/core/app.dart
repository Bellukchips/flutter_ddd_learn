import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/injection.dart';
import 'package:flutter_ddd_learn/presentation/pages/sign_in/sign_in_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter DDD',
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.greenAccent,
            inputDecorationTheme: InputDecorationTheme(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.blueAccent)),
        home: const SignInPage(),
      ),
    );
  }
}
