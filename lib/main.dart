import 'package:flutter/material.dart';
import 'package:flutter_app_1/Pages/login_page.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
