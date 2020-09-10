import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:inspect_pix/ui/constant/app_color.dart';
import 'package:inspect_pix/ui/constant/font_name.dart';
import 'package:shape_of_view/shape_of_view.dart';

class TurnAroundCard extends StatefulWidget {
  @override
  _TurnAroundCardState createState() => _TurnAroundCardState();
}

class _TurnAroundCardState extends State<TurnAroundCard> {
  Widget gwtDueCard(Color color, String t1, String t2) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xffF3F5FC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            '$t1',
            style: TextStyle(
              color: color,
              fontFamily: FontName.openSansRegular,
              fontSize: 10.0,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Text(
            '$t2',
            style: TextStyle(
                fontFamily: FontName.openSansRegular,
                fontSize: 10.0,
                color: Color(0xffA5A5A5)),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(MediaQuery.of(context).size).wp;
    final Function hp = Screen(MediaQuery.of(context).size).hp;
    return Container(
      child: Container(
        //height: 200,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: wp(100),
                      child: Text(
                        'Last 30 days',
                        style: TextStyle(
                          fontFamily: FontName.openSansSemibold,
                          fontSize: 14.0,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    gwtDueCard(AppColors.green, '25%', 'Due Tuday'),
                    SizedBox(
                      height: 10,
                    ),
                    gwtDueCard(AppColors.skyBlue, '50%', '1-3 Days Due'),
                    SizedBox(
                      height: 10,
                    ),
                    gwtDueCard(AppColors.parpel, '25%', '4-10 Days Due'),
                    SizedBox(
                      height: 10,
                    ),
                    gwtDueCard(AppColors.red, '25%', '10+ Days Due'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                //  padding: EdgeInsets.all(10),

                // height: 100,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      width: wp(100),
                      alignment: Alignment.centerRight,
                      child: Text(
                        '682 Total',
                        style: TextStyle(
                          fontFamily: FontName.openSansSemibold,
                          fontSize: 14.0,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [

                        Expanded(
                          child: Container(
                            child: Column(
                              children: [

                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: AppColors.green,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '170',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: FontName.openSansSemibold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  color: AppColors.parpel,
                                  child: Center(
                                    child: Text(
                                      '170',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: FontName.openSansSemibold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: AppColors.red,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '170',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: FontName.openSansSemibold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            height: 245,
                            decoration: BoxDecoration(
                              color: AppColors.skyBlue,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text(
                                '170',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: FontName.openSansSemibold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
