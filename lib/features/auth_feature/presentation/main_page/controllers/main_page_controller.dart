import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  bool isLoading = false;
  late ScrollController scrollController = ScrollController();
  int _selectedIndex = 0;
  int get currentIndex => _selectedIndex;

  set setIndex(int value) {
    if (_selectedIndex != value) {
      _selectedIndex = value;
      update();
    }
  }
}
