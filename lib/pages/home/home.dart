import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../router/pages.dart';

///
class HomePage extends StatelessWidget {
  ///
  HomePage({Key? key}) : super(key: key);

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: ListView(children: [
        // 多语言
        ListTile(
          title: Text('多语言演示 /pages/demo/lang.dart'),
          subtitle: Text('Get.toNamed(AppRoutes.langDemo)'),
          onTap: () => Get.toNamed(AppRoutes.langDemo),
        ),
        Divider(),
        ListTile(
          title: Text('导航-中间件-认证Auth'),
          subtitle: Text('Get.toNamed(AppRoutes.my)'),
          onTap: () => Get.toNamed(AppRoutes.my),
        ),
        Divider(),
        ListTile(
          title: Text('主题切换演示'),
          subtitle: Text('Get.toNamed(AppRoutes.themeDemo)'),
          onTap: () => Get.toNamed(AppRoutes.themeDemo),
        ),
        Divider(),
        ListTile(
          title: Text('主从依赖关系页'),
          subtitle: Text('Get.toNamed(AppRoutes.depsDemo)'),
          onTap: () => Get.toNamed(AppRoutes.depsDemo),
        ),
        Divider(),
        ListTile(
          title: Text('嵌套页'),
          subtitle: Text('Get.toNamed(AppRoutes.nestedDemo)'),
          onTap: () => Get.toNamed(AppRoutes.nestedDemo),
        ),
        Divider(),
      ]),
    );
  }
}
