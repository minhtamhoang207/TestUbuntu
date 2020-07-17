import 'package:flutter/material.dart';

class ListTeam extends StatefulWidget{
  @override
  _ListTeam createState() => _ListTeam();
}
class _ListTeam extends State<ListTeam>{
  List<String> teams = ["TEAM 1", "TEAM 2", "TEAM 3", "TEAM 4", "TEAM 5"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: teams.length,
        itemBuilder: (context, index) => buildTeams(index, context),
      ),
    );
  }
}
Padding buildTeams(int index, BuildContext context){
  List<String> teams = ["TEAM 1", "TEAM 2", "TEAM 3", "TEAM 4", "TEAM 5"];
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
        teams[index],
        style: Theme.of(context).textTheme.headline5.copyWith(
          fontWeight: FontWeight.bold,
        )
    ),
  );
}
