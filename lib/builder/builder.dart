import 'package:flutter/material.dart';

import 'base_house_builder.dart';
import 'house.dart';

class PatternBuilder extends StatefulWidget {
  PatternBuilder({Key? key}) : super(key: key);

  @override
  _PatternBuilderState createState() {
    return _PatternBuilderState();
  }
}

class _PatternBuilderState extends State<PatternBuilder> {
  House? _house;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _buildHouseWithDoor() async {
    final builder = BaseHouseBuilder();
    builder.buildDoor(1);
    _house = builder.get();
    final snackBar = SnackBar(content: Text(_house.toString()));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _buildFullHouse() async {
    final builder = BaseHouseBuilder();
    builder.buildDoor(1);
    builder.buildWindow(3);
    builder.paintHouse(Color(0xFFFFE57F));
    _house = builder.get();
    final snackBar = SnackBar(content: Text(_house.toString()));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: _buildHouseWithDoor,
              child: Text("Build House With Door"),
            ),
            TextButton(
              onPressed: _buildFullHouse,
              child: Text("Build Full House"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
