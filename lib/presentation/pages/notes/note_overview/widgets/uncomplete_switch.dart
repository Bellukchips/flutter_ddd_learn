import 'package:flutter/material.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UncompletedSwitch extends HookWidget {
  final toggleState = useState(false);

  UncompletedSwitch({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          context.read<NoteWatcherBloc>().add(toggleState.value
              ? const NoteWatcherEvent.watchUncompletedStarted()
              : const NoteWatcherEvent.watchAllStarted());
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: toggleState.value
              ? const Icon(
                  Icons.check_box_outline_blank,
                  key: Key('outline'),
                )
              : const Icon(
                  Icons.indeterminate_check_box,
                  key: Key('indeterminate'),
                ),
        ),
      ),
    );
  }
}
