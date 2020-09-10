import 'package:flutter/material.dart';
import 'package:inspect_pix/screen/home/InspectionOrderInfo/OrderInfoInspection.dart';
import 'package:inspect_pix/ui/button/occupiedStatusButton.dart';

class AddLebel extends StatefulWidget {
  @override
  _AddLebelState createState() => _AddLebelState();
}

class _AddLebelState extends State<AddLebel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderInfo()));
                        },
                        child: ImageIcon(
                          AssetImage("images/brrow.png"),
                          color: Color(0xFF2A63D4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderInfo()));
                          },
                          child: Text(
                            "Back to gallery",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'open sans semibold',
                                color: Color(0xFF2A63D4)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Labels",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: OccupaiedStatusButton(
                            text: 'Street sign',
                            backGroundColor: Colors.grey,
                          )),
                      Flexible(
                          flex: 1,
                          child: OccupaiedStatusButton(
                            text: 'Address number view',
                            backGroundColor: Colors.grey,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                ...Iterable.generate(
                    10,
                    (i) => Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0, right: 20.0),
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                      flex: 1,
                                      child: OccupaiedStatusButton(
                                        text: 'Label${i + i+ 0}',
                                        backGroundColor: Colors.grey,
                                        onPress: () {
                                          Navigator.pop(context, 'Label${i + i+ 0}');
                                        },
                                      )),
                                  Flexible(
                                      flex: 1,
                                      child: OccupaiedStatusButton(
                                        text: 'Label${i + i+1}',
                                        backGroundColor: Colors.grey,
                                        onPress: () {
                                          Navigator.pop(
                                              context, 'Label${i + i+1}');
                                        },
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                              width: 150.0,
                              child: Divider(
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
