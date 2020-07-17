import 'package:flutter/material.dart';
import 'package:testubuntu/screens/Login.dart';
import 'package:testubuntu/screens/homeScreen.dart';

void main(){
  return(
    runApp(MyApp())
  );
}

class MyApp extends StatefulWidget{
  @override
  _MyApp createState() => _MyApp();
}
class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}