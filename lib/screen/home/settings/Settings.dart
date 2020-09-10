import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inspect_pix/screen/home/profile/Profile.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  bool isSwitched2 = true;

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
                  height: 30.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'open sans semibold'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "SERVICES",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Color(0xFFFFFFFF),
                        activeColor: Color(0xFF2A63D4),
                        inactiveTrackColor: Color(0xFFFFFFFF),
                      ),
                      Text(
                        "Location Check In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: 'open sans semibold'),
                      )
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
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "SECURITY",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Add signature",
                    style: TextStyle(
                        color: Color(0xFF2A63D4),
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Add security questions",
                    style: TextStyle(
                        color: Color(0xFF2A63D4),
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "PREFERENCES",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Switch(
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(() {
                            isSwitched2 = value;
                            print(isSwitched2);
                          });
                        },
                        activeTrackColor: Color(0xFFFFFFFF),
                        activeColor: Color(0xFF2A63D4),
                        inactiveTrackColor: Color(0xFFFFFFFF),
                      ),
                      Text(
                        "Compact order list",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: 'open sans semibold'),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "SUPPORT",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Training Videos",
                    style: TextStyle(
                        color: Color(0xFF2A63D4),
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "DATABASE FILES",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Team files",
                    style: TextStyle(
                        color: Color(0xFF2A63D4),
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Colors.white,
                      //Color(0xFFEDEDED),
                      border: Border.all(
                        color: Color(0xffF0F0F0),
                        width: 2.0,
                        style: BorderStyle.solid,
                      )),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "AspenGrove Number",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: ImageIcon(
                        AssetImage("images/aspengrove.png"),
                        color: Color(0xFF2A63D4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 790.0, //MediaQuery.of(context).size.height,
                    child: ProfilePage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
