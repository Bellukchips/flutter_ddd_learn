import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:kt_dart/kt.dart';

abstract class INoteRepository {
  ///? watch notes
  ///watch uncompleted notes
  ///CUD
  ///

  Stream<Either<NotesFailure, KtList<Note>>> watchAll();
  Stream<Either<NotesFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NotesFailure, Unit>> create(Note note);
  Future<Either<NotesFailure, Unit>> update(Note note);
  Future<Either<NotesFailure, Unit>> delete(Note note);
}
