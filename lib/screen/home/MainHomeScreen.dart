import 'package:flutter/material.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';
import 'package:inspect_pix/play_ground/google_map%20_page.dart';
import 'package:inspect_pix/screen/home/dashboard/DashBoard.dart';
import 'package:inspect_pix/screen/home/inspectionlist/InspectionList.dart';
import 'package:inspect_pix/screen/home/settings/Settings.dart';
import 'package:inspect_pix/ui/icons/bottom_nav_icons_icons.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final _selectedItemColor = Color(0xFF2A63D4);
  final _unselectedItemColor = Color(0xFFA5A5A5);
  final _selectedBgColor = Color(0xFFF3F5FC);
  final _unselectedBgColor = Colors.white;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Example(),
    InspectionList(),
    MapSample(),

    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      _selectedIndex == index ? _selectedItemColor : _unselectedItemColor;

  Widget _buildIcon(IconData imagename, String text, int index) => Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight+10.0,
        child: Material(
          color: _getBgColor(index),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //   ImageIcon(AssetImage("images/$imagename")),
                Icon(
                  imagename,
                 size: 20,
                ),
//                Text(text,
//                    style:
//                        TextStyle(fontSize: 12, color: _getItemColor(index))),
              ],
            ),
            onTap: () => _onItemTapped(index),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: _buildIcon("dashboard.png", 'Home', 0),
            icon: _buildIcon(BottomNavIcons.m_dashboard, 'Home', 0),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(BottomNavIcons.m_download, 'Business', 1),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(AppIcons.address, 'School', 2),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(BottomNavIcons.m_settings, 'School', 3),
            title: SizedBox.shrink(),
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF2A63D4),
        unselectedItemColor: Color(0xFFA5A5A5),
      ),
    );
  }
}
