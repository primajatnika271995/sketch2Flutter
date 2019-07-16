import 'package:flutter/material.dart';
import 'package:zeplin2dart/page/profile_page/profile.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  static int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Chats',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Message',
      style: optionStyle,
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/001-home-icon-silhouette.png',
              color: Colors.grey,
            ),
            title: Container(
              height: 0.0,
            ),
            activeIcon: Image.asset(
              'assets/images/001-home-icon-silhouette.png',
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/003-sms.png',
              color: Colors.grey,
            ),
            title: Container(
              height: 0.0,
            ),
            activeIcon: Image.asset(
              'assets/images/003-sms.png',
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.transparent,
              elevation: 20.0,
              child: Image.asset(
                'assets/images/plus.png',
              ),
            ),
            title: Container(
              height: 0.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/002-notification.png',
              color: Colors.grey,
            ),
            title: Container(
              height: 0.0,
            ),
            activeIcon: Image.asset(
              'assets/images/002-notification.png',
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/group.png',
            ),
            title: Container(
              height: 0.0,
            ),
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
