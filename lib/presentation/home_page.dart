import 'package:flutter/material.dart';
import 'package:flutter_first/presentation/call_page.dart';
import 'package:flutter_first/presentation/products_page.dart';
import 'package:flutter_first/presentation/search_page.dart';
import 'package:flutter_first/utils/common_app_bar.dart';
import 'package:flutter_first/utils/common_bottom_bar.dart';

import '../utils/common_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Screens> screens = [
    Product(),
    Call(),
    Search()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
            title: screens[selectedIndex].name
        ),
        bottomNavigationBar: CommonBottomNavigationBar(selected: (index) {
          setState(() {
            selectedIndex = index;
          });
        }),
        body: screens[selectedIndex].screenWidget,
        drawer: const CommonNavigationDrawer());
  }
}

sealed class Screens{
  late String name;
  late Widget screenWidget;
}

class Product implements Screens{
  @override
  String name = "Product";

  @override
  Widget screenWidget= const ProductsPage();
}

class Call implements Screens{
  @override
  String name = "Call";

  @override
  Widget screenWidget= const CallPage();
}

class Search implements Screens{
  @override
  String name = "Search";

  @override
  Widget screenWidget= const SearchPage();
}