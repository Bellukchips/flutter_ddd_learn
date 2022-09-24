import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:flutter_ddd_learn/injection.dart';
import 'package:flutter_ddd_learn/presentation/routes/route.dart';

class NoteFormPage extends StatelessWidget {
  final Note? editedNote;
  const NoteFormPage({super.key, required this.editedNote});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NoteFormBloc>()..add(NoteFormEvent.init(optionOf(editedNote))),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
            current.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () => {},
            (either) => {
              either.fold((fail) {
                FlushbarHelper.createError(
                    message: fail.map(
                        unexpected: (_) =>
                            'Unexpected error occurred while deleting, please contact support',
                        insufficientPermissions: (_) =>
                            'Insufficient Permission',
                        unableToUpdate: (_) => 'Unable to Update',
                        unableToDelete: (_) =>
                            'Unable to delete')).show(context);
              }, (_) {
                AutoRouter.of(context).popUntil(
                    (route) => route.settings.name == NoteOverviewRoute.name);
              })
            },
          );
        },
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const NoteFormScaffold(),
              SavingOverlay(
                isSaving: state.isSaving,
              ),
            ],
          );
        },
      ),
    );
  }
}

class SavingOverlay extends StatelessWidget {
  final bool isSaving;
  const SavingOverlay({
    Key? key,
    required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Saving',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NoteFormScaffold extends StatelessWidget {
  const NoteFormScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit a Note' : 'Create a Note');
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.read<NoteFormBloc>().add(const NoteFormEvent.saved());
              },
              icon: const Icon(Icons.check)),
        ],
      ),
    );
  }
}
