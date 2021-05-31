import 'package:flutter/material.dart';

import 'base_house_builder.dart';
import 'house.dart';

class Client {
  void buildHouseWithDoor() async {
    final builder = BaseHouseBuilder();
    builder.buildDoor(1);
    House house = builder.get();
  }

  void buildFullHouse() async {
    final builder = BaseHouseBuilder();
    builder.buildDoor(1);
    builder.buildWindow(3);
    builder.paintHouse(Colors.red);
    House house = builder.get();
  }
}
