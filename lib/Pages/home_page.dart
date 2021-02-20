import 'package:flutter/material.dart';
import 'package:flutter_app_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Rehzaan";

    return Scaffold(
      appBar: AppBar(
        title: Text("Koxa Costumes"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to $days days of Flutter by $name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
