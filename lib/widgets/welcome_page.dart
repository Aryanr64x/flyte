// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String imageUrl;
  String headlineText;
  String buttonText;
  VoidCallback onClick;

  WelcomePage(
      {Key? key,
      required this.imageUrl,
      required this.headlineText,
      required this.buttonText,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Image(
          fit: BoxFit.fill,
          image: NetworkImage(imageUrl),
        )),
        Expanded(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://vermontwoodsstudios.com/images/content/walnut_wood_header.jpg")),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black87,
                      spreadRadius: 6.0,
                      blurRadius: 20.0)
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    headlineText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  ElevatedButton(
                    onPressed: onClick,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white.withOpacity(0.2),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      child: Text(
                        buttonText,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
