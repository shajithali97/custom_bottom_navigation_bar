import 'package:custom_bottom_navigation_bar/src/constants.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Text(pages[selectedIndex].toString()),
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
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: index == selectedIndex
                          ? activeIconBgColor
                          : Colors.transparent,
                      child: Icon(
                        bottomItems[index].iconData,
                        color: index == selectedIndex
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
                        color: index == selectedIndex
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
