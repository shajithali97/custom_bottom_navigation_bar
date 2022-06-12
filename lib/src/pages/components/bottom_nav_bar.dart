import 'package:flutter/material.dart';

import '../../controllers/bottom_nav_bar_controller.dart';
import 'bottom_nav_item.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
    required this.width,
    required this.navBarController,
  }) : super(key: key);

  final double width;
  final BottomNavBarController navBarController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 80,
      color: Colors.black87,
      child: Row(
        children: List.generate(
          4,
          (index) => NavBarItem(
            width: width,
            navBarController: navBarController,
            index: index,
          ),
        ),
      ),
    );
  }
}
