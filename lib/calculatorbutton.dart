import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final text;
  final Function callback;
  const CalculateButton({Key? key,
    required this.callback,
    this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
            child: SizedBox(
                width: 70,
                height: 70,
                child: TextButton(
                  onPressed: ()=>callback(text),
                  style:TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                    textStyle: TextStyle(
                      fontSize: 29,
                    ),
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(20),
                    ),
                  ) ,
                  child: Text("$text",style: TextStyle(
                      color: Colors.white
                  ),),
                )
            )
        );
  }
}

