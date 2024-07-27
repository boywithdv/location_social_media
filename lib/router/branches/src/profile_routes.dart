import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:location_social_media/pages/profile_page.dart';

class ProfileShellBranchData extends StatefulShellBranchData {
  const ProfileShellBranchData();
  static const String path = '/Profile';
}

@immutable
class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}
