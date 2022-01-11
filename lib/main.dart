import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "il faut gratter Dédé",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: TextButton(
                  child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage("images/dice$leftDiceNumber.png"),
                  ),
                  onPressed: () {
                    setState ((){
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                    print("test dé 1");
                  },
                )),
            Expanded(
                child: TextButton(
                  child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage("images/dice$rightDiceNumber.png"),
                  ),
                  onPressed: () {
                    setState ((){
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                    print("test dé 2");
                  },
                )),
          ],
        ),
      ),
    );
  }
}