import 'package:flutter_ddd_learn/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_ddd_learn/domain/domain.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
