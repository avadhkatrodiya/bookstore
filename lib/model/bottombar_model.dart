import 'package:flutter/material.dart';

class BottomBarModel {
  IconData iconData;
  BottomBarModel({required this.iconData});
}

List<BottomBarModel> bottomBarData = [
  BottomBarModel(iconData: Icons.home),
  BottomBarModel(iconData: Icons.book),
  BottomBarModel(iconData: Icons.menu),
  BottomBarModel(iconData: Icons.favorite),
];
