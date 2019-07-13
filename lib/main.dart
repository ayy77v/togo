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
  var _currencies = ['Rupees','Dollar','Pounds','Others'];
  var _currentItemSelected='Rupees';
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
            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected){
                _onDropDownItemSelected(newValueSelected);

              },
              value: _currentItemSelected,
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
  void _onDropDownItemSelected(String newValueSelected){
                    setState(() {
                  this._currentItemSelected = newValueSelected;         
                });
  }
}