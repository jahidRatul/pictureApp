import 'package:flutter/material.dart';

import 'CameraClickDialog.dart';
import 'conferm_dialog.dart';
import 'progress_dialog.dart';

class DialogRouter {
  static displayConfirmDialog({
    BuildContext context,
    String bodyText,
    Function yesPress,
    Function noPress,
  }) async {
    return await Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new ConfirmDialog(
            yesPress: yesPress,
            noPress: noPress,
            bodyText: bodyText,
          );
        }));
  }

  static cameraClickDialog(
    BuildContext context, {
    @required Function pickFromCamera,
    @required Function pickFromGallery,
  }) async {
    return await Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new CameraClickDialog(
            pickFromCamera: pickFromCamera,
            pickFromGallery: pickFromGallery,
          );
        }));
  }

  static displayProgressDialog(BuildContext context) {
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new ProgressDialog();
        }));
  }

  static closeProgressDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
