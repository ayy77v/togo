import 'package:flutter/material.dart';
import 'dart:math';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return    Material(
        color: Colors.lightBlueAccent,
        child: 
            Center(
               child:Text(
                   generateNumber(),
                   textDirection: TextDirection.ltr,
                   style: TextStyle(color: Colors.white, fontSize: 40.0),
      )
    ),
      );
  }
  String generateNumber(){
    var random = Random();
    int luckyNumber = random.nextInt(10);
    return "Your luck number is $luckyNumber";
  }
}