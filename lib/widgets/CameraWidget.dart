import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inspect_pix/core/utils/image_picker/image_picker_methods.dart';
import 'package:inspect_pix/ui/dialog/dialog_router.dart';

class camera extends StatefulWidget {
  camera({
    @required this.background,
    this.text,
    this.CameraPressed,
    this.onLebelPressed,
    this.image,
  });

  final Color background;

  final String text;
  final Function CameraPressed;
  final Function onLebelPressed;
  final File image;

  @override
  _cameraState createState() => _cameraState();
}

class _cameraState extends State<camera> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: true
          ? EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0)
          : null,
      child: Column(
        children: <Widget>[
          Flexible(
              flex: 4,
              child: InkWell(
                onTap: widget.CameraPressed,
                child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)))),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: widget.image != null
                          ? DecorationImage(
                              image: FileImage(widget.image), fit: BoxFit.cover)
                          : null,
                    ),
                    child: widget.image == null
                        ? ImageIcon(
                            AssetImage("images/lcamera.png"),
                            color: Color(0xFFF3F5FC),
                          )
                        : null,
                  ),
                ),
              )),
          Flexible(
              flex: 1,
              child: InkWell(
                onTap: widget.onLebelPressed,
                child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)))),
                  child: Container(
                    color: Colors.indigo,
                    child: Center(
                      child: Text(
                        widget.text,
                        style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: 'open sans regular',
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
