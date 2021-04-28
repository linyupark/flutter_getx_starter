import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../router/pages.dart';
import '../../services/app_init.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = Get.find<GlobalConfigService>();
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('返回首页'),
            subtitle: Text('Get.offAllNamed(AppRoutes.home)'),
            onTap: () => Get.offAllNamed(AppRoutes.home),
          ),
          ListTile(
            title: Text('退出登录'),
            onTap: () {
              config.userdata.erase();
              Get.offAllNamed(AppRoutes.home);
            },
          )
        ],
      ),
    );
  }
}
