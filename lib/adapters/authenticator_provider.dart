import 'package:altfire_authenticator/altfire_authenticator.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../l10n/localizer.dart';

part 'authenticator_provider.g.dart';

@Riverpod(keepAlive: true)
Authenticator authenticator(AuthenticatorRef ref) {
  throw UnimplementedError();
}

@Riverpod(keepAlive: true)
Stream<User?> userChanges(UserChangesRef ref) async* {
  final authenticator = ref.watch(authenticatorProvider);
  yield authenticator.user;
  yield* authenticator.userChanges;
}

@Riverpod(keepAlive: true)
Future<User?> authUser(AuthUserRef ref) async {
  return ref.watch(userChangesProvider.future);
}

extension AuthExceptionExtension on AuthException {
  String message(BuildContext context) {
    final l10n = context.l10n;
    return switch (this) {
      AuthCancelled() => l10n.authErrorCanceled,
      AuthInvalidPhoneNumber() => l10n.authErrorInvalidPhoneNumber,
      AuthCredentialAlreadyInUse() => l10n.authErrorCredentialAlreadyInUse,
      AuthRequiresSignIn() => l10n.authErrorRequiresSignIn,
      AuthRequiresRecentSignIn() => l10n.authErrorRequiresRecentSignIn,
      AuthFailedNetworkRequest() => l10n.authErrorFailedNetworkRequest,
      AuthUndefinedError() => l10n.authErrorUndefined,
    };
  }
}
