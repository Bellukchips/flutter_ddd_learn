import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_overview/widgets/body_overview_widget.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_overview/widgets/uncomplete_switch.dart';
import 'package:flutter_ddd_learn/presentation/routes/route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NoteOverviewPage extends HookWidget implements AutoRouteWrapper {
  const NoteOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                unauthenticated: (_) {
                  AutoRouter.of(context).replace(const SignInRoute());
                });
          },
        ),
        BlocListener<NoteActorBloc, NoteActorState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                      message: state.notesFailure.map(
                          unexpected: (_) =>
                              'Unexpected error occurred while deleting, please contact support',
                          insufficientPermissions: (_) =>
                              'Insufficient Permission',
                          unableToUpdate: (_) => 'Unable to Update',
                          unableToDelete: (_) =>
                              'Unable to delete')).show(context);
                });
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notes'),
          leading: IconButton(
            onPressed: () {
              context
                  .read<AuthenticationBloc>()
                  .add(const AuthenticationEvent.signOut());
            },
            icon: const Icon(Icons.logout_rounded),
          ),
          actions: [
            UncompletedSwitch(),
          ],
        ),
        body: const BodyOverviewWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            AutoRouter.of(context).replace(NoteFormRoute(editedNote: null));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
