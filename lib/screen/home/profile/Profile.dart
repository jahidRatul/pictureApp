import 'package:flutter/material.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';
import 'package:inspect_pix/Utils/FlutterDatePicker.dart';
import 'package:inspect_pix/Utils/FlutterUtils.dart';
import 'package:inspect_pix/ui/button/gobackButton.dart';
import 'package:inspect_pix/widgets/DatePickerCardForUniversal.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String date_use_from = '';
  static const List<String> _list = ["dha", "jes", "khu", "nor"];
  String _value = _list.first;

  bool visible = false;

  var color = Color(0xFF2A63D4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: Container(

          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          height: 110,
                          width: 110,
                          child: Image(
                            image: AssetImage("images/prof.png"),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      width: 100.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Michael Woodstone",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'open sans semibold'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "upload photo",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontSize: 12,
                                  fontFamily: 'open sans semibold'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
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
                      fontSize: 12.0,
                      color: Colors.black,
                      fontFamily: 'open sans regular'),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "yourName@gmail.com",
                    hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontFamily: 'open sans regular'),
                    prefixIcon: const Icon(
                      Icons.mail_outline,
                      size: 20,
                      color: Color(0xFF2A63D4),
                    ),
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
                    hintText: "Michel",
                    hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontFamily: 'open sans regular'),
                    prefixIcon: const Icon(
                      AppIcons.name,
                      size: 15,
                      color: Color(0xFF2A63D4),
                    ),
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
                    hintText: "WoodStone",
                    hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontFamily: 'open sans regular'),
                    prefixIcon: const Icon(
                      AppIcons.name,
                      size: 15,
                      color: Color(0xFF2A63D4),
                    ),
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
                    hintText: "560 W Pleasant Ave",
                    hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontFamily: 'open sans regular'),
                    prefixIcon: const Icon(
                      AppIcons.address,
                      size: 15,
                      color: Color(0xFF2A63D4),
                    ),
                  ),
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
                                fontSize: 12.0,
                                color: Colors.black,
                                fontFamily: 'open sans regular'),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "City *",
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
                              hintText: "Zip *",
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
                height: 30.0,
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
                  },
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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      visible = true;
                      color = Color(0xFFA5A5A5);
                    });
                  },
                  child: Text(
                    "Change Password",
                    style: TextStyle(
                        color: color,
                        fontSize: 12,
                        fontFamily: 'open sans semibold'),
                  ),
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
                child: Visibility(
                  visible: visible,
                  child: Column(
                    children: <Widget>[
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
                            hintText: "current password",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontFamily: 'open sans regular'),
                            prefixIcon: const Icon(
                              AppIcons.password,
                              size: 15,
                              color: Color(0xFF2A63D4),
                            ),
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
                            hintText: "type new pass",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontFamily: 'open sans regular'),
                            prefixIcon: const Icon(
                              AppIcons.password,
                              size: 15,
                              color: Color(0xFF2A63D4),
                            ),
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
                            hintText: "retype new pass",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontFamily: 'open sans regular'),
                            prefixIcon: const Icon(
                              AppIcons.password,
                              size: 15,
                              color: Color(0xFF2A63D4),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 1,
                      child: GoBackButton(
                        text: "SAVE",
                        backGroundColor: Colors.indigo,
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
