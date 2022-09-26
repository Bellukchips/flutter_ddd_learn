import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_form/misc/todo_item_presentation_classes.dart';
import '../misc/build_context_x.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
              return TodoTile(
                index: index,
                key: ValueKey(context.formTodos[index].id),
              );
            },
          );
        },
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;
  const TodoTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());
    final textEController = useTextEditingController(text: todo.name);
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              context.formTodos = context.formTodos.minusElement(todo);
            },
            borderRadius: BorderRadius.circular(8),
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          leading: Checkbox(
            value: todo.done,
            onChanged: (value) {
              context.formTodos = context.formTodos.map(
                  (list) => list == todo ? todo.copyWith(done: value!) : list);
              context
                  .read<NoteFormBloc>()
                  .add(NoteFormEvent.todosChanged(context.formTodos));
            },
          ),
          title: TextFormField(
            controller: textEController,
            decoration: const InputDecoration(
                hintText: 'Todo', counterText: '', border: InputBorder.none),
            maxLength: TodoName.maxLength,
            onChanged: (value) {
              context.formTodos = context.formTodos.map(
                  (list) => list == todo ? todo.copyWith(name: value) : list);
              context
                  .read<NoteFormBloc>()
                  .add(NoteFormEvent.todosChanged(context.formTodos));
            },
            validator: (value) {
              return context.read<NoteFormBloc>().state.note.todos.value.fold(
                  (f) => null,
                  (todo) => todo[index].name.value.fold(
                      (f) => f.maybeMap(
                            empty: (_) => 'Cannot be empty',
                            exceedingLength: (_) => 'To long',
                            multiline: (_) => 'Has to be in single line',
                            orElse: () => null,
                          ),
                      (r) => null));
            },
          ),
        ),
      ),
    );
  }
}
