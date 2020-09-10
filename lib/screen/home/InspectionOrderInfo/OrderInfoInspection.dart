import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';
import 'package:inspect_pix/screen/home/CameraPage/CameraInfo.dart';
import 'package:inspect_pix/screen/home/MainHomeScreen.dart';
import 'package:inspect_pix/screen/home/OrderDetails/OrderInfoDetails.dart';
import 'package:inspect_pix/screen/home/orderFromInfo/OrderFromInfo.dart';

class OrderInfo extends StatefulWidget {
  @override
  _OrderInfoState createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  int _selectedIndex = 0;

  Color _colors1 = Colors.indigo;
  Color _colors2 = Colors.grey;
  Color _colors3 = Colors.grey;
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  static List<Widget> _widgetOptions = <Widget>[
    OrderFromInfo(),
    OrderInfoDetails(),
    CameraInfo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainHome()));
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
                                      builder: (context) => MainHome()));
                            },
                            child: Text(
                              "Back to list",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'open sans semibold',
                                  color: Color(0xFF2A63D4)),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            _onItemTapped(0);
                            _colors1 = Colors.indigo;
                            _colors2 = Colors.grey;
                            _colors3 = Colors.grey;
                          },
                          child: Icon(
                           // AssetImage("images/info.png"),
                            AppIcons.info,
                            size: 25,
                            color: _colors1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: InkWell(
                            onTap: () {
                              _onItemTapped(1);
                              _colors1 = Colors.grey;
                              _colors2 = Colors.indigo;
                              _colors3 = Colors.grey;
                            },
                            child: Icon(
                             // AssetImage("images/details.png"),
                              AppIcons.list,
                              size: 25.0,
                              color: _colors2,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: InkWell(
                            onTap: () {
                              _onItemTapped(2);
                              _colors1 = Colors.grey;
                              _colors2 = Colors.grey;
                              _colors3 = Colors.indigo;
                            },
                            child: Icon(
                             // AssetImage("images/camera.png"),
                              AppIcons.camera_white,
                              size: 25.0,
                              color: _colors3,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: _widgetOptions.elementAt(_selectedIndex),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
