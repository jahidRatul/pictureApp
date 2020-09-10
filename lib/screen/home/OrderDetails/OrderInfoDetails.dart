import 'package:flutter/material.dart';
import 'package:inspect_pix/Utils/FlutterDatePicker.dart';
import 'package:inspect_pix/Utils/FlutterUtils.dart';
import 'package:inspect_pix/ui/button/occupiedStatusButton.dart';
import 'package:inspect_pix/widgets/CheckBox.dart';
import 'package:inspect_pix/widgets/DatePickerCard.dart';

class OrderInfoDetails extends StatefulWidget {
  @override
  _OrderInfoDetailsState createState() => _OrderInfoDetailsState();
}

class _OrderInfoDetailsState extends State<OrderInfoDetails> {
  String date_use_from = '';

//  SingingCharacterViolation _characterV = SingingCharacterViolation.Yes;
//  SingingCharacterPostings _characterP = SingingCharacterPostings.Yes;
  int id = 1;
  int id2 = 2;

  bool _isSelectedcontact = false;
  bool _isSelectedmeter = false;
  bool _isSelectedvisual = false;
  bool _isSelectedmailbox = false;
  bool _isSelectedpersonal = false;
  bool _isSelectedproperty = false;
  Color backgroundcolorOccupaidButton = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Data Completed",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
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
                  child: DatePickerCard(
                    text: date_use_from != ''
                        ? FlutterUtils.dateFormatter(date_use_from)
                        : 'Select date',
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
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 10.0,
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
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Inspector Name",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
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
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0, right: 5.0),
                          padding: EdgeInsets.symmetric(horizontal: 10),
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
                              hintText: "Type first name",
                              hintStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                  fontFamily: 'open sans regular'),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0, right: 5.0),
                          padding: EdgeInsets.symmetric(horizontal: 10),
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
                              hintText: "Type last name",
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
                SizedBox(
                  height: 10.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Violation Posted",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                          unselectedWidgetColor: Colors.grey,
                          disabledColor: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            focusColor: Color(0xFF2A63D4),
                            activeColor: Color(0xFF2A63D4),
                            value: 1,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                id = 1;
                              });
                            },
                          ),
                          Text(
                            'YES',
                            style: new TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'open sans regular',
                                color: Color(0xFFA5A5A5)),
                          ),
                          Radio(
                            focusColor: Color(0xFF2A63D4),
                            activeColor: Color(0xFF2A63D4),
                            value: 2,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                id = 2;
                              });
                            },
                          ),
                          Text(
                            'NO',
                            style: new TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'open sans regular',
                                color: Color(0xFFA5A5A5)),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 1.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 10.0,
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
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Postings / Notices",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                          unselectedWidgetColor: Colors.grey,
                          disabledColor: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            focusColor: Color(0xFF2A63D4),
                            activeColor: Color(0xFF2A63D4),
                            value: 1,
                            groupValue: id2,
                            onChanged: (val) {
                              setState(() {
                                id2 = 1;
                              });
                            },
                          ),
                          Text(
                            'YES',
                            style: new TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'open sans regular',
                                color: Color(0xFFA5A5A5)),
                          ),
                          Radio(
                            focusColor: Color(0xFF2A63D4),
                            activeColor: Color(0xFF2A63D4),
                            value: 2,
                            groupValue: id2,
                            onChanged: (val) {
                              setState(() {
                                id2 = 2;
                              });
                            },
                          ),
                          Text(
                            'NO',
                            style: new TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'open sans regular',
                                color: Color(0xFFA5A5A5)),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 1.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 10.0,
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
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Occupancy Status",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
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
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: OccupaiedStatusButton(
                          text: 'Occupied by Owner',
                          backGroundColor: Colors.indigo,
                          onPress: () {},
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: OccupaiedStatusButton(
                          text: 'Occupied by Unknown',
                          backGroundColor: backgroundcolorOccupaidButton,
                          onPress: () {},
                        ),
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
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: OccupaiedStatusButton(
                          text: 'Occupied by Tenant',
                          backGroundColor: backgroundcolorOccupaidButton,
                          onPress: () {},
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: OccupaiedStatusButton(
                          text: 'Partial Vacant-Multi Unit',
                          backGroundColor: backgroundcolorOccupaidButton,
                          onPress: () {},
                        ),
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
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: OccupaiedStatusButton(
                          text: 'Vacant',
                          backGroundColor: backgroundcolorOccupaidButton,
                          onPress: () {},
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: OccupaiedStatusButton(
                          text: 'Bad Address',
                          backGroundColor: backgroundcolorOccupaidButton,
                          onPress: () {},
                        ),
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
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: OccupaiedStatusButton(
                          text: 'No Access',
                          backGroundColor: backgroundcolorOccupaidButton,
                          onPress: () {},
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
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
                    height: 10.0,
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
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Occupancy Verified by",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Choose 3 or more options",
                    style: TextStyle(
                        fontSize: 8.0,
                        fontFamily: 'open sans regular',
                        color: Colors.black),
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
                  margin: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: LabeledCheckbox(
                          label: 'Contact',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: _isSelectedcontact,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelectedcontact = newValue;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: LabeledCheckbox(
                          label: 'Meter',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: _isSelectedmeter,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelectedmeter = newValue;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: LabeledCheckbox(
                          label: 'Visual',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: _isSelectedvisual,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelectedvisual = newValue;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: LabeledCheckbox(
                          label: 'Mailbox',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: _isSelectedmailbox,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelectedmailbox = newValue;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: LabeledCheckbox(
                          label: 'Personal-Garage',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: _isSelectedpersonal,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelectedpersonal = newValue;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: LabeledCheckbox(
                          label: 'Property not maintained',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: _isSelectedproperty,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelectedproperty = newValue;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
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

//enum SingingCharacterViolation { Yes, No }
//enum SingingCharacterPostings{ Yes, No }
