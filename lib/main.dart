import 'package:flutter/material.dart';

import 'calculatorbutton.dart';

void main() {
  runApp(
     const MaterialApp(
          home: Calculator(),
        debugShowCheckedModeBanner: false,
      ));
}
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Simple Calculator"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculateButton(text:9),
                CalculateButton(text:8),
                CalculateButton(text:7),
                CalculateButton(text:'x'),
              ]), Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculateButton(text:6),
                CalculateButton(text:5),
                CalculateButton(text:4),
                CalculateButton(text:'+'),
              ]), Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculateButton(text:3),
                CalculateButton(text:2),
                CalculateButton(text:1),
                CalculateButton(text:'-'),
              ]), Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculateButton(text:'='),
                CalculateButton(text:"Clr"),
                CalculateButton(text:"*"),
                CalculateButton(text:'/'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

