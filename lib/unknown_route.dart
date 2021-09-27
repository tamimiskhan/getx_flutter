import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unknown page"),
      ),
      body: Center(
        child: Text(
          "This is UnknownRoute",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
