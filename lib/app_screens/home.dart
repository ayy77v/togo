import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
      padding: EdgeInsets.only(left: 10.0, top: 40.0),
      alignment: Alignment.center,
      color: Colors.deepPurple,
//      width: 200.0,
//      height: 100.0,
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
      Row(
        children: <Widget>[
        Expanded(child: Text(
        "Flight",
         textDirection: TextDirection.ltr,
         style: TextStyle(
         decoration: TextDecoration.none,
         fontSize: 30.0
         )
         ),
        ),
        Expanded(child: Text(
        "Boat",
         textDirection: TextDirection.ltr,
         style: TextStyle(
         decoration: TextDecoration.none,
         fontSize: 20.0
         )
         ),
        ),
          Expanded(child: Text(
        "Car",
         textDirection: TextDirection.ltr,
         style: TextStyle(
         decoration: TextDecoration.none
         )
         ),
          ),
        ],
      ),
      Row(
        children: <Widget>[
        Expanded(child: Text(
        "Flight",
         textDirection: TextDirection.ltr,
         style: TextStyle(
         decoration: TextDecoration.none,
         fontSize: 35.0
         )
         ),
        ),
        Expanded(child: Text(
        "Boat",
         textDirection: TextDirection.ltr,
         style: TextStyle(
         decoration: TextDecoration.none
         )
         ),
        ),
          Expanded(child: Text(
        "Car",
         textDirection: TextDirection.ltr,
         style: TextStyle(
         decoration: TextDecoration.none
         )
         ),
          ),
        ],
      )
        ],
      )
      
      
      

      


    ) 
    );
    
   
  }
}