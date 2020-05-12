import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DicePageState();
  }
}

class _DicePageState extends State<DicePage>{
  var leftDiceNumber =1;
  var rightDiceNumber =2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 1,
            child: FlatButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {
                updateDice();
              },
            ),
          ),
          Expanded(
//          flex: 2,
            child: FlatButton(
              child: Image.asset("images/dice$rightDiceNumber.png"),
              onPressed: () {
                updateDice();
              },
            ),
          ),
        ],
      ),
    );
  }

  void updateDice(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }

}
