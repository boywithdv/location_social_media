import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:location_social_media/view/pages/splash_page.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

// スプラッシュのルードデータ
@TypedGoRoute<SplashRouteData>(
  path: SplashRouteData.path,
)
class SplashRouteData extends GoRouteData {
  const SplashRouteData();
  static const String path = '/';
}

@override
Widget build(BuildContext context, GoRouterState state) {
  return const SplashPage();
}
