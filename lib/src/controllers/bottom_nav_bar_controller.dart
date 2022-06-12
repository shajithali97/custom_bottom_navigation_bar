import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  var selectedIndex = 0.obs;
  changeIndex(int index) {
    selectedIndex = index.obs;
  }
}
