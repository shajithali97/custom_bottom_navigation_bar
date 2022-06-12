import 'package:custom_bottom_navigation_bar/src/model/bottom_nav_model.dart';
import 'package:flutter/material.dart';

List<BottomNavBarModel> bottomItems = [
  BottomNavBarModel(iconData: Icons.home, labelData: "Home"),
  BottomNavBarModel(iconData: Icons.music_note, labelData: "Library"),
  BottomNavBarModel(iconData: Icons.podcasts, labelData: "Podcast"),
  BottomNavBarModel(iconData: Icons.person, labelData: "Profile"),
];
List pages = ["Home", "Library", "Podcast", "Profile"];

var activeIconBgColor = Color.fromRGBO(254, 86, 49, 0.8);
var activeColor = Colors.white;
var inActiveColor = Color.fromRGBO(255, 255, 255, 0.35);
