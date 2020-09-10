import 'package:flutter/material.dart';
import 'package:inspect_pix/screen/splashscreen/SplashScreen.dart';

import 'play_ground/google_map _page.dart';
import 'play_ground/multi_image_picker.dart';

void main() {
  runApp(InspectPix());
}

class InspectPix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashScreen(),
      //home: MapSample(),
      //  home: MultiImagePIcker(),
    );
  }
}
