import 'package:flutter/material.dart';
import 'package:inspect_pix/ui/button/gobackButton.dart';

class CameraClickDialog extends StatelessWidget {
  final Function pickFromCamera;
  final Function pickFromGallery;

  CameraClickDialog({
    this.pickFromGallery,
    this.pickFromCamera,
  });

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0XFF4C4C4C).withOpacity(0.70),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ImageIcon(
                      AssetImage("images/cancelicon.png"),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  child: GoBackButton(
                    backGroundColor: Color(0xFF2A63D4),
                    text: 'Take a Shot',
                    onPress: pickFromCamera,
                  ),
                ),
                Container(
                  child: GoBackButton(
                    backGroundColor: Color(0xFF2A63D4),
                    text: 'Upload from Gallery',
                    onPress: pickFromGallery,
                  ),
                )
              ],
            ),
          ),
        )

//      Center(
//        child:
//        new Text(
//          "It's a Dialog!",
//          style: TextStyle(color: Colors.white),
//        ),
//      ),
        );
  }
}
