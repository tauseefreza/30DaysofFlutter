import 'package:flutter/material.dart';
import 'package:flutter_app_1/Pages/login_page.dart';
import 'package:flutter_app_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.muli().fontFamily),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      //debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
