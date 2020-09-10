import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:inspect_pix/ui/constant/app_color.dart';
import 'package:inspect_pix/ui/theme/app_text_style.dart';

import 'card/header_card.dart';
import 'card/orders_summary.dart';
import 'card/turn_around_card.dart';

class Example extends StatefulWidget {
  Example({Key key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(MediaQuery.of(context).size).wp;
    final Function hp = Screen(MediaQuery.of(context).size).hp;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(bottom: false,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                  width: wp(100),
                ),
                HeaderCard(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: wp(100),
                  child: Text(
                    'Inspection turnaround',
                    style: AppTextStyle.openSansSemiBold_16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TurnAroundCard(),
                SizedBox(
                  height: 20,
                ),
                OrderSummeryCard(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
