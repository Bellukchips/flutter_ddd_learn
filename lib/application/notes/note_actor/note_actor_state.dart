part of 'note_actor_bloc.dart';

@freezed
class NoteActorState with _$NoteActorState {
  const factory NoteActorState.initial() = _Initial;
  const factory NoteActorState.actionInProgress() = _ActionInProgress;
  const factory NoteActorState.deleteFailure(NotesFailure notesFailure) = _DeleteFailure;
  const factory NoteActorState.deleteSuccess() = _DeleteSuccess;
}
