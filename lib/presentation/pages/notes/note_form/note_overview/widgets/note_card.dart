import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:kt_dart/kt.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {},
        onLongPress: () {
          final noteActorBloc = context.read<NoteActorBloc>();
          _showDeleteDialog(context, noteActorBloc);
        },
        child: Column(
          children: [
            Text(
              note.body.getOrCrash(),
              style: const TextStyle(fontSize: 18),
            ),
            if (note.todos.length > 0) ...[
              const SizedBox(
                height: 4,
              ),
              Wrap(
                spacing: 8,
                children: [
                  ...note.todos.getOrCrash().map((todo) => Container()).iter
                ],
              )
            ]
          ],
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, NoteActorBloc bloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Select Note : '),
            content: Text(
              note.body.getOrCrash(),
              maxLines: 3,
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    bloc.add(NoteActorEvent.deleted(note));
                    Navigator.pop(context);
                  },
                  child: const Text('Delete')),
            ],
          );
        });
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem todo;
  const TodoDisplay({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        todo.done
            ? const Icon(Icons.check_box)
            : const Icon(Icons.check_box_outline_blank),
        Text(
          todo.name.getOrCrash(),
        ),
      ],
    );
  }
}
