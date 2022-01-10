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
        body: DicePage (),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  var leftDiceNumber = 5;
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
                  onPressed:() {
                    print ("test dé 1");
                  },
                )
            ),
            Expanded(
                child: TextButton(
                  child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage("images/dice6.png"),
                  ),
                  onPressed:() {
                    print ("test dé 2");
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}
