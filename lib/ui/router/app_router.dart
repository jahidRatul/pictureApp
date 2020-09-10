import 'package:flutter/material.dart';
import 'package:inspect_pix/play_ground/google_map%20_page.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  static navToMapPage(BuildContext context) {
    return Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.scale,
            alignment: Alignment.topCenter,
            child: MapSample()));
  }
}
