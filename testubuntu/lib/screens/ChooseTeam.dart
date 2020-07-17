import 'package:flutter/material.dart';
import 'package:testubuntu/screens/homeScreen.dart';

class ChooseYourTeam extends StatefulWidget{
  @override
  _ChooseYourTeam createState() => _ChooseYourTeam();
}
class _ChooseYourTeam extends State<ChooseYourTeam>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "CHOOSE YOUR TEAM",
              style: TextStyle(fontSize: 35, color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: RaisedButton(
              child: Text(
                "Team 1",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: (){

              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text(
                "Team 2",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text(
                "Team 3",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: (){
              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text(
                "Team 4",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: (){

              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text(
                "Team 5",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: (){

              },
            ),
          ),

        ],
      ),
    );
  }
}