import 'package:flutter/material.dart';
import 'package:testubuntu/models/member.dart';
import 'package:testubuntu/screens/body.dart';


class ShowInfor extends StatefulWidget{
  @override
  _ShowInfor createState() => _ShowInfor();
}
class _ShowInfor extends State<ShowInfor>{
  PageController _pageController;
  int initialPage = 1;
  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }
  @override
  void dipose(){
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) => MemCard(member: members[index]),
        ),
      ),
    );
  }
}
class MemCard extends StatelessWidget{
  final Member member;
  const MemCard({Key key, this.member}) : super (key:key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [defaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(member.face),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              member.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ngay/thang/nam sinh:   ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                member.dateOfBirth,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "So thich:   ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                member.favor,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Tuoi:   ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                member.age.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Tai nang:   ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                member.talents,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              )
            ],
          ),
        ],
      ),
    );
  }
}
