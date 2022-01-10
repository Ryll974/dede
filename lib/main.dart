import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Dédé",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage("images/Dice--01.png"),
              ),
              Image(
                height: 100,
                width: 100,
                image: AssetImage("images/Dice--01.png"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
