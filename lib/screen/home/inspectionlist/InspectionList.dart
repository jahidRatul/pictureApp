import 'package:flutter/material.dart';
import 'package:inspect_pix/play_ground/google_map%20_page.dart';
import 'package:inspect_pix/screen/home/inspectionlist/ByDate/ByDatePage.dart';
import 'package:inspect_pix/ui/button/inspectionviewpagerbutton.dart';
import 'package:inspect_pix/ui/icons/bottom_nav_icons_icons.dart';
import 'package:inspect_pix/ui/router/app_router.dart';
import 'package:page_transition/page_transition.dart';

class InspectionList extends StatefulWidget {
  @override
  _InspectionListState createState() => _InspectionListState();
}

class _InspectionListState extends State<InspectionList> {
  static const List<String> _list = ["Open", "jes", "khu", "nor"];
  String _value = _list.first;
  int _selectedIndex = 0;
  Color _colors1 = Colors.indigo;
  Color _colors2 = Colors.grey;
  Color _colors3 = Colors.grey;
  Color _colors4 = Colors.grey;
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  static List<Widget> _widgetOptions = <Widget>[
    ByDatePage(),
    ByDatePage(),
    ByDatePage(),
    ByDatePage(),
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
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.transparent,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 60.0,
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
                            color: Colors.black,
                            fontFamily: 'open sans semibold',
                            fontSize: 12.0),
                        onChanged: (String newValue) => _value = newValue,
                        items: [
                          for (String i in _list)
                            DropdownMenuItem(
                              value: i,
                              child: Text('$i'),
                            )
                        ],
                      ),
                    ),
                    // Container(
                    //   child: InkWell(
                    //     onTap: () {
                    //       AppRouter.navToMapPage(context);
                    //     },
                    //     child: Image(
                    //       image: AssetImage("images/locationpic.png"),
                    //       height: 15,
                    //       width: 15,
                    //     ),
                    //   ),
                    // ),
                    Container(
                      child: Text(
                        "Download",
                        style: TextStyle(
                            color: Color(0xFF2A63D4),
                            fontFamily: 'open sans semibold',
                            fontSize: 12.0),
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
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextField(
//                      controller: controller,
//                      focusNode: focusNode,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontFamily: 'open sans regular'),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFA5A5A5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      prefixIcon: Icon(
                      //  AssetImage("images/search.png"),
                        BottomNavIcons.search,
                        size: 15,
                        color: Color(0xFF2A63D4),
                      ),
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFA5A5A5),
                          fontFamily: 'open sans regular'),
                      contentPadding: const EdgeInsets.only(
                        left: 16,
                        right: 20,
                        top: 14,
                        bottom: 14,
                      ),
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
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: SafeArea(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: InspactionViewPagerButton(
                          text: "BY DATE",
                          backGroundColor: _colors1,
                          onPress: () {
                            setState(() {
                              _onItemTapped(0);
                              _colors1 = Colors.indigo;

                              _colors2 = Colors.grey;

                              _colors4 = Colors.grey;
                              _colors3 = Colors.grey;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: InspactionViewPagerButton(
                          text: "BY CITY",
                          backGroundColor: _colors2,
                          onPress: () {
                            setState(() {
                              _onItemTapped(1);
                              _colors2 = Colors.indigo;
                              _colors1 = Colors.grey;

                              _colors4 = Colors.grey;
                              _colors3 = Colors.grey;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: InspactionViewPagerButton(
                          text: "BY ADDRESS",
                          backGroundColor: _colors3,
                          onPress: () {
                            setState(() {
                              _onItemTapped(2);
                              _colors1 = Colors.grey;
                              _colors2 = Colors.grey;

                              _colors4 = Colors.grey;
                              _colors3 = Colors.indigo;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: InspactionViewPagerButton(
                          text: "BY TYPE",
                          backGroundColor: _colors4,
                          onPress: () {
                            setState(() {
                              _onItemTapped(3);
                              _colors1 = Colors.grey;
                              _colors2 = Colors.grey;
                              _colors3 = Colors.grey;
                              _colors4 = Colors.indigo;
                            });
                          },
                        ),
                      ),
                    ],
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
