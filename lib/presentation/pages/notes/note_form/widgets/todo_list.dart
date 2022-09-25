import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_form/misc/todo_item_presentation_classes.dart';
import '../misc/build_context_x.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (previous, current) =>
          previous.note.todos.isFull != current.note.todos.isFull,
      listener: (context, state) {
        if (state.note.todos.isFull) {
          FlushbarHelper.createAction(
              duration: const Duration(seconds: 5),
              message: 'Want longer list? activate premium 😊',
              button: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white),
                  ))).show(context);
        }
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, child) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: formTodos.value.size,
            itemBuilder: (context, index) {
              return TodoTile(index: index);
            },
          );
        },
      ),
    );
  }
}

class TodoTile extends StatelessWidget {
  final int index;
  const TodoTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());
    return ListTile(
      leading: Checkbox(
        value: true,
        onChanged: (value) {
          context.formTodos = context.formTodos
              .map((list) => list == todo ? todo.copyWith(done: value!) : list);
          context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.todosChanged(context.formTodos));
        },
      ),
    );
  }
}
