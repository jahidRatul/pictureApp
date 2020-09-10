import 'package:flutter/material.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';
import 'package:inspect_pix/screen/home/InspectionOrderInfo/OrderInfoInspection.dart';
import 'package:inspect_pix/widgets/InspectionCard.dart';

class ByDatePage extends StatefulWidget {
  @override
  _ByDatePageState createState() => _ByDatePageState();
}

class _ByDatePageState extends State<ByDatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: new ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return InspectionCard(
                      cardchild: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              flex: 5,
                              child: Container(
                                margin: EdgeInsets.all(8.0),
                                child: SafeArea(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Text(
                                          "I-PROPERTY INSPECTION",
                                          style: TextStyle(
                                              color: Color(0xFF65308B),
                                              fontFamily: 'open sans semibold',
                                              fontSize: 14.0),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 5.0, right: 5.0, top: 2.0),
                                          child: Text(
                                            "5703 Christine Ln",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'open sans regular',
                                                fontSize: 10.0),
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Text(
                                          "Russellville, Tennessee(TN), 37860",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'open sans regular',
                                              fontSize: 10.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 5.0, right: 5.0, top: 2.0),
                                        child: Text(
                                          "Aug 22 - Aug 26",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'open sans regular',
                                              fontSize: 10.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(right: 10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(5.0),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                           // AssetImage("images/camera.png"),
                                            Icons.camera_alt,
                                            size: 15,
                                            color: Color(0xFFA5A5A5),
                                          ),
                                          SizedBox(width: 5,height: 25,),
                                          Text(
                                            "7",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily:
                                                    'open sans semibold'),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          //AssetImage("images/arow.png"),
                                         AppIcons.forewed_arrow,
                                          //Icons.arrow_forward,
                                          size: 12,
                                          color: Color(0xFF2A63D4),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPress: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderInfo()));
                      },
                    );
//                    getRow(
//                        m.matchId,
//                        m.seriesId,
//                        m.tDesc,
//                        m.mDesc,
//                        m.startTime,
//                        m.endTime,
//                        m.dn,
//                        m.alerts,
//                        m.team,
//                        m.type,
//                        m.country,
//                        m.tabs,
//                        m.tabCategory,
//                        "v.country",
//                        "v.city");

//                      ListTile(
//                      title: Text(
//                        m.tDesc,
//                        style: TextStyle(color: Colors.black),
//                      ),
//                      subtitle: Text(
//                        m.mDesc,
//                        style: TextStyle(color: Colors.black),
//                      ),
//                    );

                    // return getRow(index);
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
