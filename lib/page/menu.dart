import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/003-sms.png',
              color: Colors.grey,
            ),
            title: Container(
              height: 0.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/plus.png',
              color: Colors.grey,
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
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/group.png',
              color: Colors.grey,
            ),
            title: Container(
              height: 0.0,
            ),
          ),
        ],
      ),
    );
  }
}
