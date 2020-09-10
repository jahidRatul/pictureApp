import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inspect_pix/core/utils/image_picker/image_picker_methods.dart';
import 'package:inspect_pix/screen/home/AssignLebel/AddLebelToScreen.dart';
import 'package:inspect_pix/ui/dialog/CameraClickDialog.dart';
import 'package:inspect_pix/ui/dialog/ImageClickDialog.dart';
import 'package:inspect_pix/ui/dialog/dialog_router.dart';
import 'package:inspect_pix/widgets/CameraWidget.dart';

class CameraInfo extends StatefulWidget {
  @override
  _CameraInfoState createState() => _CameraInfoState();
}

class _CameraInfoState extends State<CameraInfo> {
  List<String> _list = [
    "Front of House",
    "House Number",
    "Street Scene",
    "Street Sign",
    "+ Label",
  ];

  Map<int, File> _fileMap = new Map();

  @override
  Widget build(BuildContext context) {
    File image;
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              return camera(
                background: Colors.white,
                text: _list[index],
                image: _fileMap[index],
                CameraPressed: () {
                  DialogRouter.cameraClickDialog(context,
                      pickFromCamera: () async {
                    image = await FlutterImagePicker.getImageCamera(context,
                        compress: false);
                    _fileMap[index] = image;
                    setState(() {});
                  }, pickFromGallery: () async {
                    image = await FlutterImagePicker.getImageGallery(context,
                        compress: false);
                    _fileMap[index] = image;
                    setState(() {});
                  });
                },
                onLebelPressed: () async {
                  String s = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddLebel()));

                  _list.removeLast();
                  _list.add(s);
                  _list.add("+ Label");

                  setState(() {});
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void openImageClickDialog() {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return ImageClickDialog(image: 'https://picsum.photos/250?image=9');
        }));
  }

  void openCameraClickDialog() {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return CameraClickDialog();
        }));
  }
}
