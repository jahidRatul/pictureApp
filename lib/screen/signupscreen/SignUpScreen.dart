import 'package:flutter/material.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';
import 'package:inspect_pix/Utils/FlutterDatePicker.dart';
import 'package:inspect_pix/Utils/FlutterUtils.dart';
import 'package:inspect_pix/screen/home/MainHomeScreen.dart';
import 'package:inspect_pix/screen/signinscreen/SignInScreen.dart';
import 'package:inspect_pix/ui/button/default_button.dart';
import 'package:inspect_pix/ui/button/gobackButton.dart';
import 'package:inspect_pix/widgets/DatePickerCardForUniversal.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String date_use_from = '';
  static const List<String> _list = ["dha", "jes", "khu", "nor"];

  @override
  Widget build(BuildContext context) {
    String _value = _list.first;
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
                  height: 40.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'open sans semibold'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
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
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "email *",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: Icon(
                        AppIcons.mail,
                        size: 15.0,
                        color: Color(0xFF2A63D4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "First name *",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: Icon(
                        AppIcons.name,
                        size: 15.0,
                        color: Color(0xFF2A63D4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Last name *",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: Icon(
                        AppIcons.name,
                        size: 15.0,
                        color: Color(0xFF2A63D4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                    obscureText: true,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "pass *",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: Icon(
                        AppIcons.password,
                        size: 15.0,
                        color: Color(0xFF2A63D4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                    obscureText: true,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Repeat pass *",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: Icon(
                        AppIcons.password,
                        size: 15.0,
                        color: Color(0xFF2A63D4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Street & Number",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: Icon(
                        AppIcons.address,
                        size: 15.0,
                        color: Color(0xFF2A63D4),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'open sans regular'),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "City",
                                hintStyle: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                    fontFamily: 'open sans regular'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 40.0,
                            width: 3.0,
                            child: new Container(
                              margin: new EdgeInsetsDirectional.only(
                                  start: 1.0, end: 1.0),
                              color: Color(0xFF959595),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: DropdownButtonFormField<String>(
                              value: _value,
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xFF2A63D4),
                                ),
                              ),
                              iconSize: 24,
                              elevation: 16,
                              isExpanded: true,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'open sans regular',
                                  fontSize: 12.0),
                              onChanged: (String newValue) =>
                                  setState(() => _value = newValue),
                              items: [
                                for (String i in _list)
                                  DropdownMenuItem(
                                    value: i,
                                    child: Text('$i'),
                                  )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 40.0,
                            width: 3.0,
                            child: new Container(
                              margin: new EdgeInsetsDirectional.only(
                                  start: 1.0, end: 1.0),
                              color: Color(0xFF959595),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'open sans regular'),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Zip",
                                hintStyle: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                    fontFamily: 'open sans regular'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15.0, left: 15.0),
                  child: DatePickerCardForUniversal(
                    text: date_use_from != ''
                        ? FlutterUtils.dateFormatter(date_use_from)
                        : 'Date of Birth *',
                    onPress: () async {
                      String date = await FlutterDatePicker.selectDate(context);
                      print(date);
                      date_use_from = date.split(' ').first;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mobile phone *",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'open sans regular'),
                      prefixIcon: Icon(
                        AppIcons.phone_number,
                        size: 15.0,
                        color: Color(0xFF2A63D4),
                      ),
                    ),
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
                  height: 40.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: GoBackButton(
                          text: "GO BACK",
                          backGroundColor: Colors.grey,
                          onPress: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RoundBoarderButton(
                          text: "SIGN UP",
                          onPress: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainHome()));
                          },
                        ),
                      ),
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
                  margin: EdgeInsets.only(right: 15.0, left: 15.0),
                  child: Center(
                      child: Text(
                        "Fields marked with * are mandatory",
                        style: TextStyle(
                            color: Color(0xFF4C4C4C),
                            fontSize: 12.0,
                            fontFamily: 'open sans regular'),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
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
