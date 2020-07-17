import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testubuntu/screens/ChooseTeam.dart';
import 'package:testubuntu/screens/homeScreen.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState() => _LoginPage();
}
class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController passWord = TextEditingController();
    var emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.tv,
              size: 100,
            ),
            Center(
              child: Text(
                "huhihihihihihihihihihih",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
              child: TextField(
                controller: userName,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  hintText:"Username",
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: TextField(
                textInputAction: TextInputAction.done,
                controller: passWord,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText:"Password",
                ),
              ),
            ),
            Center(
              child: RaisedButton(
                child: Text(
                  "Login",
                ),
                onPressed: (){
                  if(emailValid.hasMatch(userName.text)){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseYourTeam()),
                    );
                  } else{
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Retry"),
                          content: Text("Please enter again"),
                          backgroundColor: Colors.pinkAccent,
                        );
                      },
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}