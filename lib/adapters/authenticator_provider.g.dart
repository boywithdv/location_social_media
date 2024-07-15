// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authenticatorHash() => r'61b5772dc880562aeae73173ede11cf3786f6f8c';

/// See also [authenticator].
@ProviderFor(authenticator)
final authenticatorProvider = Provider<Authenticator>.internal(
  authenticator,
  name: r'authenticatorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authenticatorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthenticatorRef = ProviderRef<Authenticator>;
String _$userChangesHash() => r'ea5c4b4d77905de2901512a3fdc79e59d8fddd66';

/// See also [userChanges].
@ProviderFor(userChanges)
final userChangesProvider = StreamProvider<User?>.internal(
  userChanges,
  name: r'userChangesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserChangesRef = StreamProviderRef<User?>;
String _$authUserHash() => r'e6904192b24f0d4bd4892e058c966482376162d6';

/// See also [authUser].
@ProviderFor(authUser)
final authUserProvider = FutureProvider<User?>.internal(
  authUser,
  name: r'authUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthUserRef = FutureProviderRef<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
