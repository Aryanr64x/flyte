// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flyte/widgets/welcome_page.dart';

class InitialScreen extends StatelessWidget {
  static final String id = "initial";
  InitialScreen({Key? key}) : super(key: key);
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          WelcomePage(
            imageUrl:
                "https://cdn.shopify.com/s/files/1/1000/7716/products/Ro-MNP_7168a575-e8af-4fd6-8b51-c9144c4ac582_900x.jpg?v=1645098724",
            headlineText: "Welcome to place where innovation meets imagination",
            buttonText: "NEXT",
            onClick: () {
              _controller.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
          WelcomePage(
            imageUrl:
                "https://cdn.shopify.com/s/files/1/1000/7716/products/9_900x.jpg?v=1638796667",
            headlineText: "Witness Products That defies Science",
            buttonText: "NEXT",
            onClick: () {
              _controller.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
          WelcomePage(
            imageUrl:
                "https://cdn.shopify.com/s/files/1/1000/7716/products/Nikola-5pack_900x.jpg?v=1536844276",
            headlineText: "and where products are first of its kind",
            buttonText: "Lets Browse Products",
            onClick: () {
              _controller.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
        ],
      ),
    );
  }
}
