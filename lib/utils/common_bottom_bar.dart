import 'package:flutter/material.dart';

class CommonBottomNavigationBar extends StatefulWidget {
  const CommonBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CommonBottomNavigationBar> createState() =>
      _CommonBottomNavigationBarState();
}

class _CommonBottomNavigationBarState extends State<CommonBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.white)
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      currentIndex: _selectedIndex,
      iconSize: 40,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }
}
