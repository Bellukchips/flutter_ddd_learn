part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchAllStrarted;
  const factory NoteWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStrarted;
  const factory NoteWatcherEvent.noteReceived(Either<NotesFailure, KtList<Note>> failureOrNotes) = _NotesReceived;
}