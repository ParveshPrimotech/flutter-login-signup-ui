import 'package:flutter/material.dart';

class CommonBottomNavigationBar extends StatefulWidget {
  const CommonBottomNavigationBar({Key? key, required this.selected}) : super(key: key);

  final void Function(int) selected;
  @override
  State<CommonBottomNavigationBar> createState() =>
      _CommonBottomNavigationBarState();
}

class _CommonBottomNavigationBarState extends State<CommonBottomNavigationBar> {
  int _selectedIndex = 0;

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
      onTap: (index){
        widget.selected(index);

        setState(() {
          _selectedIndex = index;
        });
      },
      elevation: 5,
    );
  }
}
