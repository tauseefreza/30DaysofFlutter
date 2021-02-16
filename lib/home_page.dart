import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Rehzaan";

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Koxa Costumes")),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days Flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
