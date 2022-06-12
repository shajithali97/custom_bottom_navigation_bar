import 'package:custom_bottom_navigation_bar/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  var selectedIndex = 0.obs;
  changeIndex(int index) {
    selectedIndex.value = index;
  }

  textColor(index) {
    return selectedIndex.value == index ? activeColor : inActiveColor;
  }

  iconColor(index) {
    return selectedIndex.value == index ? activeColor : inActiveColor;
  }

  activeIconColor(index) {
    return selectedIndex.value == index
        ? activeIconBgColor
        : Colors.transparent;
  }
}
