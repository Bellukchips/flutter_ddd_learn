import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_form/note_form_page.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_overview/note_overview_page.dart';
import 'package:flutter_ddd_learn/presentation/pages/sign_in/sign_in_page.dart';
import 'package:flutter_ddd_learn/presentation/pages/splash/splash_page.dart';
part 'route.gr.dart';

@MaterialAutoRouter( 
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(page: SignInPage),
    AutoRoute(page: NoteOverviewPage),
    AutoRoute(page: NoteFormPage,fullscreenDialog: true)
  ],
)
class AppRouter extends _$AppRouter {}
