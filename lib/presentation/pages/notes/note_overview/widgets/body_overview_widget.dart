import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_overview/widgets/critcal_failure_display.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_overview/widgets/error_note.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_overview/widgets/note_card.dart';

class BodyOverviewWidget extends StatelessWidget {
  const BodyOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loadInProgress: (_) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final notes = state.notes[index];
                if (notes.failureOption.isSome()) {
                  return ErrorNote(note: notes);
                } else {
                  return NoteCard(note: notes);
                }
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(failure: state.notesFailure);
          },
        );
      },
    );
  }
}
