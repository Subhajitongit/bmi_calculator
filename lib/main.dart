// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculator(),
    );
  }
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    radioButton("Man", Colors.blue, 1),
                    radioButton("Women", Colors.pink, 0),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            height: 120.0,
            child: FlatButton(
              color: currentindex == index ? color : Colors.grey[200],
              onPressed: () {
                changeIndex(index);
              },
              child: Text(value,
                  style: TextStyle(
                    color: currentindex == index ? Colors.white : color,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            )));
  }
}
