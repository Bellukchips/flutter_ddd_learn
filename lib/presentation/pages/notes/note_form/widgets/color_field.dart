import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';

class ColorField extends StatelessWidget {
  const ColorField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      buildWhen: (previous, current) =>
          previous.note.color != current.note.color,
      builder: (context, state) {
        return SizedBox(
          height: 80,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final itemColor = NoteColor.predefinedColors[index];
                return GestureDetector(
                  onTap: () {
                    context
                        .read<NoteFormBloc>()
                        .add(NoteFormEvent.colorChanged(itemColor));
                  },
                  child: Material(
                    color: itemColor,
                    shape: CircleBorder(
                        side: state.note.color.value.fold(
                            (_) => BorderSide.none,
                            (color) => color == itemColor
                                ? const BorderSide(width: 1.5)
                                : BorderSide.none)),
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 12,
                );
              },
              itemCount: NoteColor.predefinedColors.length),
        );
      },
    );
  }
}
