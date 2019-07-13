import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Stateful App",
      home: FavoriteCity(),
    )
  );
}
class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity>{
  String nameCity="";
  @override
  Widget build(BuildContext context) {
    debugPrint("Favorite Widget is created");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() {
                  nameCity = userInput;
                  debugPrint("set state is created");
                });
              
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child:Text(
              "Your bext city is $nameCity",
              style: TextStyle(fontSize: 20.0),
            ))
          ],
        ),
      ),
    );
  }
}