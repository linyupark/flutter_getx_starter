import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/app_init.dart';
import '../pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  RouteAuthMiddleware({required this.priority});

  @override
  int? priority = 0;

  @override
  RouteSettings? redirect(String? route) {
    final config = Get.find<GlobalConfigService>();

    // 已登录
    if (config.userdata.read('login') == 1) {
      return null;
    }

    Future.delayed(
      Duration(milliseconds: 500),
      () => Get.snackbar('提示', '请先登录APP'),
    );
    return RouteSettings(name: AppRoutes.login);
  }
}
