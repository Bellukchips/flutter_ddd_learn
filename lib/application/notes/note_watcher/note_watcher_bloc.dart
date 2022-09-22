import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial()) {
    on<_WatchAllStrarted>((event, emit) async {
      emit(const NoteWatcherState.loadInProgress());
      await _noteStreamSubcription.cancel();
    });
    on<_WatchUncompletedStrarted>((event, emit) async {
      emit(const NoteWatcherState.loadInProgress());
      await _noteStreamSubcription.cancel();
    });

    on<_NotesReceived>((event, emit) async {
      emit(event.failureOrNotes.fold((l) => NoteWatcherState.loadFailure(l),
          (r) => NoteWatcherState.loadSuccess(r)));
    });

    _noteStreamSubcription = _noteRepository.watchUncompleted().listen(
        (failureOrNotes) => add(NoteWatcherEvent.noteReceived(failureOrNotes)));
  }
  late final StreamSubscription<Either<NotesFailure, KtList<Note>>>
      _noteStreamSubcription;
  // Stream<NoteWatcherState> _eitherLoadedAllStarted() async* {
  //   yield const NoteWatcherState.loadInProgress();
  //   _noteRepository.watchAll().listen(
  //       (failureOrNotes) => add(NoteWatcherEvent.noteReceived(failureOrNotes)));
  // }

  @override
  Future<void> close() async {
    await _noteStreamSubcription.cancel();
    return super.close();
  }
}
