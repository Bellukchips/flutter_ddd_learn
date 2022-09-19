import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';
import 'package:flutter_ddd_learn/infrastructure/notes/notes_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:flutter_ddd_learn/infrastructure/core/firestore_helper.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _firestore;

  NoteRepository(this._firestore);
  @override
  Future<Either<NotesFailure, Unit>> create(Note note) async {
    try {
      final userDocs = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDocs.noteCollection.doc(noteDto.id).set(noteDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NotesFailure.insufficientPermissions());
      } else {
        return left(const NotesFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NotesFailure, Unit>> delete(Note note) async {
    try {
      final userDocs = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDocs.noteCollection.doc(noteDto.id).set(noteDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NotesFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const NotesFailure.unableToDelete());
      } else {
        return left(const NotesFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NotesFailure, Unit>> update(Note note) async {
    try {
      final userDocs = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDocs.noteCollection.doc(noteDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NotesFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const NotesFailure.unableToUpdate());
      } else {
        return left(const NotesFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<NotesFailure, KtList<Note>>> watchAll() async* {
    // users/user:id/notes/notes:id
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NotesFailure, KtList<Note>>(
            snapshot.docs
                .map((doc) => NoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, s) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const NotesFailure.insufficientPermissions());
      } else {
        return left(const NotesFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NotesFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => NoteDto.fromFirestore(doc).toDomain()))
        .map((notes) => right<NotesFailure, KtList<Note>>(notes
            .where((element) =>
                element.todos.getOrCrash().any((todoItem) => !todoItem.done))
            .toImmutableList()))
        .onErrorReturnWith((e, s) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const NotesFailure.insufficientPermissions());
      } else {
        return left(const NotesFailure.unexpected());
      }
    });
  }
}
