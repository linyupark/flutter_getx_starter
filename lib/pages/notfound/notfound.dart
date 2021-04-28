import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../router/pages.dart';

class NotfoundPage extends StatelessWidget {
  NotfoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由没有找到'),
      ),
      body: ListTile(
        title: Text('返回首页'),
        // subtitle: Text('Get.offAllNamed(AppRoutes.Home)'),
        onTap: () => Get.offAllNamed(AppRoutes.home),
      ),
    );
  }
}
