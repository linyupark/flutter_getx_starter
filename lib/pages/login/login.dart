import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../router/pages.dart';
import '../../services/app_init.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = Get.find<GlobalConfigService>();

    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: ListTile(
        title: Text('返回首页并模拟登录'),
        subtitle: Text('Get.offAllNamed(AppRoutes.home)'),
        onTap: () {
          config.userdata.write('login', 1);
          Get.offAllNamed(AppRoutes.home);
        },
      ),
    );
  }
}
