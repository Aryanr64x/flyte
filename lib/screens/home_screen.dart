// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flyte/widgets/flyte_input.dart';
import 'package:flyte/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  static final String id = "home";
  HomeScreen({Key? key}) : super(key: key);
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
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: FlyteInput(),
          ),
          StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          )
        ],
      ),
    );
  }
}
