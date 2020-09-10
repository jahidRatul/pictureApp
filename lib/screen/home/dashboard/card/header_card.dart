import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:inspect_pix/ui/constant/font_name.dart';
import 'package:shape_of_view/shape_of_view.dart';

class HeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: Center(child: Image.asset('images/prof.png')),
            ),
          ),
          SizedBox(width: 15,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Hi, Michael',style: TextStyle(
                  color: Color(0xff2A63D4),
                  fontFamily: FontName.openSansSemibold,
                  fontSize: 16.0,

                ),),
                Text('Thursday, 27 August',style: TextStyle(
                  color: Color(0xffA5A5A5),
                  fontFamily: FontName.openSansRegular,
                  fontSize: 12.0,

                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
