import 'package:bookstore_app/utility/colors.dart';
import 'package:flutter/material.dart';

class DrawerModel {
  final IconData icon;
  final String title;
  final Color colors;
  const DrawerModel(
      {required this.colors, required this.icon, required this.title});
}

List drawerItem = const [
  DrawerModel(
      colors: ColorUtility.blue, icon: Icons.home_outlined, title: "Home"),
  DrawerModel(colors: ColorUtility.red, icon: Icons.book, title: "Bookstores"),
  DrawerModel(
      colors: ColorUtility.green,
      icon: Icons.book_online,
      title: "Book Depository"),
  DrawerModel(
      colors: ColorUtility.deepPurple,
      icon: Icons.book_outlined,
      title: "Blackwell's Books"),
  DrawerModel(colors: ColorUtility.yellow, icon: Icons.share, title: "Share"),
];
