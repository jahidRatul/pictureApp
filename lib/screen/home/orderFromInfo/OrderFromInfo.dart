import 'package:flutter/material.dart';

class OrderFromInfo extends StatefulWidget {
  @override
  _OrderFromInfoState createState() => _OrderFromInfoState();
}

class _OrderFromInfoState extends State<OrderFromInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Property information",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'open sans semibold',
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Order ID',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Client',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '73226836',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Five Brothers',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Load #',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Client Order #',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'CLK',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '17182365',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Work Code',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Address',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'I-PROPERTY INSPECTION',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '11 Centennial Way',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Owner',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Window Start',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Jack Myers',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Sat, Aug 22, 2020',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Due Date',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Lender',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Wed, Aug 26, 2020',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'CLK',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Price',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Vacant',
                                    style: TextStyle(
                                        color: Color(0xFF2A63D4),
                                        fontFamily: 'open sans semibold',
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '129,000.00',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'NO',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'open sans regular',
                                        fontSize: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Photos Required",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontFamily: 'open sans semibold',
                                  fontSize: 12.0),
                            ),
                            Text(
                              "Yes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'open sans regular',
                                  fontSize: 8.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Divider(
                                height: 5.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Attachments",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'open sans semibold',
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "CLK.pdf",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontFamily: 'open sans semibold',
                                  fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Divider(
                                height: 5.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Instructions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'open sans semibold',
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Order Instructions",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontFamily: 'open sans semibold',
                                  fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Make contact, Check ID, Leave Card.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'open sans regular',
                                  fontSize: 8.0),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Photo Instructions",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontFamily: 'open sans semibold',
                                  fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "See photo, checklist",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'open sans regular',
                                  fontSize: 8.0),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Lot size",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontFamily: 'open sans semibold',
                                  fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Lock box",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontFamily: 'open sans semibold',
                                  fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                      /*    Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Type Unit',
                            style: AppTextStyle.robotoRegular_12,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${widget.model.unitType}',
                            style: AppTextStyle.robotoRegular_14.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'LT/LB',
                            style: AppTextStyle.robotoRegular_12,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${widget.model.unitNumber}',
                            style: AppTextStyle.robotoRegular_14.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                    ],
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
