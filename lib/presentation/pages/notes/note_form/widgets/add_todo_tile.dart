import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../application/application.dart';
import '../misc/build_context_x.dart';

class AddTodoTIle extends StatelessWidget {
  const AddTodoTIle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listener: (context, state) {
        context.formTodos = state.note.todos.value.fold(
            (l) => listOf<TodoItemPrimitive>(),
            (todoItemList) =>
                todoItemList.map((_) => TodoItemPrimitive.fromDomain(_)));
      },
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      buildWhen: (previous, current) =>
          previous.note.todos.isFull != current.note.todos.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.note.todos.isFull,
          title: const Text('Add a todo'),
          leading: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.add),
          ),
          onTap: () {
            context.formTodos.plusElement(TodoItemPrimitive.empty());
            context
                .read<NoteFormBloc>()
                .add(NoteFormEvent.todosChanged(context.formTodos));
          },
        );
      },
    );
  }
}
