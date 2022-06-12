import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/pages/bottom_navigation_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Custom Bottom Navigation Bar",
      theme: ThemeData.dark(),
      home: CustomBottomNavigation(),
    );
  }
}
