import 'package:flutter/material.dart';

import 'house.dart';

abstract class HouseBuilder {
  void reset();
  void buildDoor(int numDoor);
  void buildWindow(int numWindow);
  void paintHouse(Color colors);
  House get();
}
