import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/core/user.dart';
import '../../domain/core/value_object.dart';

extension FirebaseUserDomainX on firebase_auth.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      // displayName: StringSingleLine.fromUniqueString(displayName ?? ""),
      // isAnonymous: isAnonymous,
      // emailVerified: emailVerified,
      // email: EmailAddress(email!),
      // phoneNumber: PhoneNumber(phoneNumber ??""),
      // photoUrl: StringSingleLine.fromUniqueString(photoURL ?? ""),
      // refreshToken: StringSingleLine.fromUniqueString(refreshToken ?? ""),
      // tenantId: StringSingleLine.fromUniqueString(tenantId ?? ""),
    );
  }
}
