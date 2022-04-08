// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flyte/widgets/flyte_input.dart';
import 'package:flyte/widgets/product_card.dart';
import 'package:flyte/widgets/product_list_page.dart';

class HomeScreen extends StatefulWidget {
  static final String id = "home";
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> pages = [
    ProductListPage(),
    Text("This is the shopping page"),
    Text("This is the about us  page"),
    Text("This is account info")
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.pin_drop_rounded,
          color: Colors.black,
        ),
        title: Column(
          children: [
            Text(
              "FlyteStore",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            Text(
              "Welcome back to the wonder store",
              style: TextStyle(fontSize: 12, color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff572504),
        unselectedItemColor: Colors.white38,
        selectedItemColor: Colors.white,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
            ),
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_rounded,
            ),
            label: "Notifications",
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
      backgroundColor: Colors.white,
      body: pages.elementAt(_currentIndex),
    );
  }
}
