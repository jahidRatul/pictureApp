import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:inspect_pix/ui/constant/app_color.dart';
import 'package:inspect_pix/ui/constant/font_name.dart';
import 'package:percent_indicator/percent_indicator.dart';

class OrderSummeryCard extends StatefulWidget {
  @override
  _OrderSummeryCardState createState() => _OrderSummeryCardState();
}

class _OrderSummeryCardState extends State<OrderSummeryCard> {
  Widget rowText(String t1, String t2) {
    final Function wp = Screen(MediaQuery.of(context).size).wp;
    final Function hp = Screen(MediaQuery.of(context).size).hp;

    return Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              '$t1',
              style: TextStyle(
                fontFamily: FontName.openSansRegular,
                fontSize: 10.0,
                color: AppColors.black,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: wp(100),
            alignment: Alignment.centerRight,
            child: Text(
              '$t2',
              style: TextStyle(
                fontFamily: FontName.openSansRegular,
                fontSize: 10.0,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(MediaQuery.of(context).size).wp;
    final Function hp = Screen(MediaQuery.of(context).size).hp;
    return Container(

      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: wp(100),
            child: Text(
              'Orders Summary',
              style: TextStyle(
                fontFamily: FontName.openSansSemibold,
                fontSize: 14.0,
                color: AppColors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          rowText('Unassigned', '250'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.2,
            progressColor: AppColors.skyBlue10,
          ),
          SizedBox(
            height: 20,
          ),
          rowText('Open', '821'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.821,
            progressColor: AppColors.skyBlue10,
          ),

          SizedBox(
            height: 20,
          ),
          rowText('Completed (Pending)', '600'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.600,
            progressColor: AppColors.skyBlue10,
          ),

          SizedBox(
            height: 20,
          ),
          rowText('Completed (Approved)', '695'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.695,
            progressColor: AppColors.skyBlue10,
          ),


          SizedBox(
            height: 20,
          ),
          rowText('Completed (Rejected)', '185'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.185,
            progressColor: AppColors.skyBlue10,
          ),


          SizedBox(
            height: 20,
          ),
          rowText('Cancelled', '217'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.217,
            progressColor: AppColors.skyBlue10,
          ),


          SizedBox(
            height: 20,
          ),
          rowText('Follow-Up Needed', '834'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.834,
            progressColor: AppColors.skyBlue10,
          ),


          SizedBox(
            height: 20,
          ),
          rowText('Follow-Up Completed', '176'),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            lineHeight: 20.0,
            percent: 0.176,
            progressColor: AppColors.skyBlue10,
          ),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}
