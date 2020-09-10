import 'package:flutter/material.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';

class DatePickerCard extends StatelessWidget {
  final String text;
  final Function onPress;

  DatePickerCard({
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    ' $text',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'open sans regular'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Icon(
                   // AssetImage("images/datepick.png"),
                    AppIcons.dob,
                    size: 20.0,
                    color: Color(0xFF2A63D4),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
