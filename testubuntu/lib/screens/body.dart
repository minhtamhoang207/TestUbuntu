import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testubuntu/models/member.dart';
import 'package:testubuntu/screens/ListTeamm.dart';
import 'package:testubuntu/screens/ShowInforr.dart';
const defaultShadow = BoxShadow(
  offset: Offset(0,4),
  blurRadius: 4,
  color: Colors.black,
);

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: Text(
                'TEAM 2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black45),
              ),
            ),
          ),
          ShowInfor(),
        ],
      ),
    );
  }
}

