import 'package:custom_bottom_navigation_bar/src/controllers/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'components/bottom_nav_bar.dart';

class CustomBottomNavigation extends StatelessWidget {
  CustomBottomNavigation({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    double width = MediaQuery.of(context).size.width;
    final navBarController = Get.put(BottomNavBarController());

    return Scaffold(
      body: Center(
        child: Obx(
            () => Text(pages[navBarController.selectedIndex.value].toString())),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
          width: width, navBarController: navBarController),
    );
  }
}
