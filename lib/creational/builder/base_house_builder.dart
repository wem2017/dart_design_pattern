import 'package:flutter/material.dart';

import 'house.dart';
import 'house_builder.dart';

class BaseHouseBuilder implements HouseBuilder {
  late House house;

  BaseHouseBuilder() {
    reset();
  }

  @override
  void buildDoor(int numDoor) {
    house.numDoor = numDoor;
  }

  @override
  void buildWindow(int numWindow) {
    house.numWindow = numWindow;
  }

  @override
  void paintHouse(Color colors) {
    house.colors = colors;
  }

  @override
  void reset() {
    house = House();
  }

  @override
  House get() {
    final item = house;
    reset();
    return item;
  }
}
