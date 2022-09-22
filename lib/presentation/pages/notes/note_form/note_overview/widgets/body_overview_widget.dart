import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';

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
                  return Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  );
                } else {
                  return Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  );
                }
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (state) {
            return Container(color: Colors.yellow, width: 200, height: 200);
          },
        );
      },
    );
  }
}
