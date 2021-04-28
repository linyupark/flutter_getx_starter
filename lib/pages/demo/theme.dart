import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeDemoPage extends StatelessWidget {
  ThemeDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主题'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '是否黑色主题 -> ${Get.isDarkMode}',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('切换主题'),
              subtitle: Text('Get.changeTheme'),
              onTap: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
