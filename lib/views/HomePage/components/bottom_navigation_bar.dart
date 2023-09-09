import 'package:flutter/material.dart';
import 'package:venari_app/models/constants/constants.dart';
import 'package:venari_app/models/pages.dart';
import 'package:venari_app/views/login_page/login_page.dart';

class HomePageBottomNavigationBar extends StatefulWidget {
  const HomePageBottomNavigationBar({
    super.key,
  });
  @override
  State<HomePageBottomNavigationBar> createState() =>
      _HomePageBottomNavigationBarState();
}

int _currentIndex = 0;

class _HomePageBottomNavigationBarState
    extends State<HomePageBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: _onItemTapped,
        backgroundColor: kIsNotSelected,
        iconSize: 30,
        currentIndex: _currentIndex,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.nights_stay_outlined), label: 'Sleep'),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music), label: 'Composer'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => pages[_currentIndex])));
    });
  }
}
