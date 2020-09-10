import 'package:flutter/material.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';

class DatePickerCardForUniversal extends StatelessWidget {
  final String text;
  final Function onPress;

  DatePickerCardForUniversal({
    this.text,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 51,
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Colors.white,
            //Color(0xFFEDEDED),
            border: Border.all(
              color: Color(0xffF0F0F0),
              width: 2.0,
              style: BorderStyle.solid,
            )),
        child: InkWell(
          onTap: () {
            onPress();
          },
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
               Icon(
                  AppIcons.dob,
                  size: 15.0,
                  color: Color(0xFF2A63D4),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  ' $text',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
