import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class NestedPages extends GetView<NestedController> {
  NestedPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('嵌套路由'),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: Navigator(
                key: Get.nestedKey(1),
                initialRoute: '/lang',
                onGenerateRoute: controller.onGenerateRoute,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.font_download_sharp),
              label: '多语言',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: '主题',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: '登录',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.pink,
          onTap: controller.changePage,
        ),
      ),
    );
  }
}
