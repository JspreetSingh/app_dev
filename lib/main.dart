import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page';
import 'package:flutter_application_2/pages/loginpage.dart';

void main() {
  runApp(Myfirstapp());
}

class Myfirstapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
