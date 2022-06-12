import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Custom Bottom Navigation Bar",
      home: HomePage(),
    );
  }
}
