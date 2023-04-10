import 'package:flutter/material.dart';

import 'calculatorbutton.dart';

void main() {
  runApp(const MaterialApp(
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
   int firstNum=0;
   int secondNum=0;
   String history='';
   String textToDisplay='';
  String res='';
  String operation='';

  void btnOnClick (String btnVal) {
    if (btnVal == "Clr") {
      textToDisplay = '';

      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == "+" || btnVal == "-" || btnVal == "X" || btnVal == "/") {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.parse(textToDisplay);

      if (operation == "+") {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }

      if (operation == "-") {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }

      if (operation == "X") {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }

      if (operation == "/") {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      else {
        res = int.parse(textToDisplay + btnVal).toString();
      }
    }
      setState(() {
        textToDisplay=res;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Calculator"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            Container(
                alignment: Alignment(1.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child:  Text(history,
                      style: TextStyle(
                        fontSize: 20,
                      )),
                )),
            Container(
              padding: EdgeInsets.all(12.0),
              alignment: Alignment(1.0, -1.0),
              child: Text(textToDisplay,
                  style: TextStyle(
                    fontSize: 40,
                  )),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculateButton(
                text: '9',
                callback: btnOnClick,
              ),
              CalculateButton(text: '8', callback: btnOnClick),
              CalculateButton(text: '7', callback: btnOnClick),
              CalculateButton(text: 'x', callback: btnOnClick),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculateButton(text: '6', callback: btnOnClick),
              CalculateButton(text: '5', callback: btnOnClick),
              CalculateButton(text: '4', callback: btnOnClick),
              CalculateButton(text: '+', callback: btnOnClick),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculateButton(text: '3', callback: btnOnClick),
              CalculateButton(text: '2', callback: btnOnClick),
              CalculateButton(text: '1', callback: btnOnClick),
              CalculateButton(text: '-', callback: btnOnClick),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculateButton(text: '=', callback: btnOnClick),
                CalculateButton(text: "Clr", callback: btnOnClick),
                CalculateButton(text: "*", callback: btnOnClick),
                CalculateButton(text: '/', callback: btnOnClick),
              ],
            ),
          ],
        ),
      ),
    );

  }
  }
