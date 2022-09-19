import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:flutter_ddd_learn/presentation/pages/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) {
    on<_Init>((event, emit) async {
      emit(event.initNoteOption.fold(
          () => state,
          (initialNote) =>
              state.copyWith(note: initialNote, isEditing: false)));
    });
    on<_BodyChanged>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(body: NoteBody(event.bodyStr)),
          saveFailureOrSuccessOption: none()));
    });
    on<_ColorChanged>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(color: NoteColor(event.colorChanged)),
          saveFailureOrSuccessOption: none()));
    });
    on<_TodosChanged>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(
              todos:
                  List3(event.todos.map((primitive) => primitive.toDomain()))),
          saveFailureOrSuccessOption: none()));
    });
    on<_Saved>((event, emit) async {
      Either<NotesFailure, Unit> failureOrSuccess = state.isEditing
          ? await _noteRepository.update(state.note)
          : await _noteRepository.create(state.note);
      emit(state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ));
      if (state.note.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _noteRepository.update(state.note)
            : await _noteRepository.create(state.note);
      }
      emit(state.copyWith(
        isSaving: false,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
