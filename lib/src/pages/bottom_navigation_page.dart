import 'package:custom_bottom_navigation_bar/src/controllers/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomNavBarController bottomNavBarController =
        Get.put(BottomNavBarController());
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child:
            Text(pages[bottomNavBarController.selectedIndex.value].toString()),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 80,
        color: Colors.black87,
        child: Row(
          children: List.generate(
            4,
            (index) => SizedBox(
              width: width / 4,
              child: InkWell(
                onTap: bottomNavBarController.changeIndex(index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor:
                          index == bottomNavBarController.selectedIndex
                              ? activeIconBgColor
                              : Colors.transparent,
                      child: Icon(
                        bottomItems[index].iconData,
                        color: index == bottomNavBarController.selectedIndex
                            ? activeColor
                            : inActiveColor,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      bottomItems[index].labelData,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: index == bottomNavBarController.selectedIndex
                            ? activeColor
                            : inActiveColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
