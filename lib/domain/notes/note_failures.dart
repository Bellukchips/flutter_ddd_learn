import 'package:freezed_annotation/freezed_annotation.dart';
part 'note_failures.freezed.dart';

@freezed
abstract class NotesFailure with _$NotesFailure {
  const factory NotesFailure.unexpected() = _Unexpected;
  const factory NotesFailure.insufficientPermissions() = _InsufficientPermission;
}
