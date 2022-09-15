import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/presentation/routes/route.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });
  final _appRoute = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.when(
            initial: () => null,
            authenticated: () {
              print('success login');
            },
            unauthenticated: () => _appRoute.replace(const SplashRoute()));
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter DDD',
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.greenAccent,
            inputDecorationTheme: InputDecorationTheme(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.blueAccent)),
        routerDelegate: _appRoute.delegate(),
        routeInformationParser: _appRoute.defaultRouteParser(),
      ),
    );
  }
}
