import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../demo/lang.dart';
import '../../demo/theme.dart';
import '../../login/login.dart';
import '../../notfound/notfound.dart';

class NestedController extends GetxController {
  static NestedController get to => Get.find();

  RxInt currentIndex = 0.obs;

  final pages = <String>['/lang', '/theme', '/login'];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/login') {
      return GetPageRoute(
        settings: settings,
        page: () => LoginPage(),
        transition: Transition.topLevel,
      );
    } else if (settings.name == '/theme') {
      return GetPageRoute(
        settings: settings,
        page: () => ThemeDemoPage(),
        transition: Transition.rightToLeftWithFade,
      );
    } else if (settings.name == '/lang') {
      return GetPageRoute(
        settings: settings,
        page: () => LangDemoPage(),
        transition: Transition.fadeIn,
      );
    }

    return GetPageRoute(
      settings: settings,
      page: () => NotfoundPage(),
      transition: Transition.fadeIn,
    );
  }
}
