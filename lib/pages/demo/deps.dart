import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../router/pages.dart';

class DepsDemoPage extends StatelessWidget {
  DepsDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DepsDemoPage'),
      ),
      body: Center(
        child: Column(
          children: [
            // 跳转
            ElevatedButton(
              onPressed: () {
                Get.toNamed('${AppRoutes.depsDemo}/a');
              },
              child: Text('next page A'),
            ),
          ],
        ),
      ),
    );
  }
}
