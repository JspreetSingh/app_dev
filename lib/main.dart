import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page';
import 'package:flutter_application_2/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myfirstapp());
}

class Myfirstapp extends StatelessWidget {
  const Myfirstapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
