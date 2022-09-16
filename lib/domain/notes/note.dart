import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
part 'note.freezed.dart';

@freezed
abstract class Note with _$Note {
  const Note._();
  const factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required List3<TodoItem> todos,
  }) = _Note;

  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit 
        .andThen(todos.failureOrUnit)
        .andThen(todos
            .getOrCrash()
            .map((todoItem) => todoItem.failureOption)
            //! getting the failureOption from The Todo Item entity - not a failure unit from value
            .filter((o) => o.isSome())
            //! if we can't get the 0th element, the list is empty , in such a case, it's valid
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (a) => left(a)))
        .fold((l) => some(l), (_) => none());
  }
}
