import 'package:flutter/material.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Container(
                 child: SizedBox(
                   width: 70,
                   height: 70,
                   child: TextButton(
                     onPressed: ()=>{},
                     style:TextButton.styleFrom(
                       backgroundColor: Colors.grey,
                      textStyle: TextStyle(
                        fontSize: 29,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),


                   ) ,
                     child:const Text('9',style: TextStyle(
                       color: Colors.white
                     ),),
                 )
               )
               )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

