import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // final Exception failure;
  factory EmailAddress(String input) {
    // ignore: unnecessary_null_comparison
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // final Exception failure;
  factory Password(String input) {
    // ignore: unnecessary_null_comparison
    assert(input != null);
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}
