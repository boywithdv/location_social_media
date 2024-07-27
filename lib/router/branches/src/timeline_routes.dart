import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:location_social_media/pages/time_line.dart';

class TimeLineShellBranchData extends StatefulShellBranchData {
  const TimeLineShellBranchData();
  static const String path = '/timeline';
}

@immutable
class TimeLineRouteData extends GoRouteData {
  const TimeLineRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TimeLine();
  }
}
