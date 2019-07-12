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
      ),
      CarImageAsset(),
      CarBookButton()
        ],
      )
      
      
      

      


    ) 
    );
    
   
  }
}

class CarImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/car.jpg');
    Image image = Image(image: assetImage, width: 250.0,height: 250.0,);
    return Container(child: image,);
  }
}

class CarBookButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 30.0,
      child: RaisedButton(
        color:  Colors.deepOrange,
        child: Text('pressed the button',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
        ),),
        elevation: 6.0,
        onPressed: () =>
          bookRide(context)
        ),
    );
  }
}

void bookRide(BuildContext context){
  var alertDialog = AlertDialog(
    title: Text('ride book success'),
    content: Text('have a pleasent trip'),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) => alertDialog   
  );
}