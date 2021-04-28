import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangDemoPage extends StatelessWidget {
  LangDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('多语言'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'title -> ${'title'.tr}',
              style: TextStyle(fontSize: 24),
            ),
            Divider(),
            Text(
              'login -> ${'login'.trParams({
                'name': 'ducafecat',
                'email': 'ducafecat@gmail.com'
              })!}',
              style: TextStyle(fontSize: 24),
            ),
            Divider(),
            ListTile(
              title: Text('切换语言'),
              subtitle: Text('zh-HK'),
              onTap: () {
                const locale = Locale('zh', 'HK');
                Get.updateLocale(locale);
              },
            ),
            ListTile(
              title: Text('切换语言'),
              subtitle: Text('zh-Hans'),
              onTap: () {
                const locale = Locale('zh', 'Hans');
                Get.updateLocale(locale);
              },
            ),
            ListTile(
              title: Text('切换语言'),
              subtitle: Text('en-US'),
              onTap: () {
                const locale = Locale('en', 'US');
                Get.updateLocale(locale);
              },
            ),
          ],
        ),
      ),
    );
  }
}
