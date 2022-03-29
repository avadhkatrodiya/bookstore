import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomscreenController extends GetxController {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    update();
  }

  PageController? pageController;
  void pagecontroller() {
    pageController = PageController(initialPage: 0);
  }

  int _tabselecter = 0;

  set tabselecter(int value) {
    _tabselecter = value;
    print("===================$_tabselecter");
    update();
  }

  int get tabselecter => _tabselecter;

  int _selected = 0;

  set selected(int value) {
    _selected = value;
  }

  int get selected => _selected;
}
