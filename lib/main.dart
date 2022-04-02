import 'package:flutter/material.dart';
import 'package:flyte/screens/home_screen.dart';
import 'package:flyte/screens/initial_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: InitialScreen.id,
    routes: {
      HomeScreen.id: (BuildContext context) => HomeScreen(),
      InitialScreen.id: (BuildContext context) => InitialScreen()
    },
  ));
}
