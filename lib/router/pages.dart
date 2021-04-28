import 'package:get/get.dart';

import '../pages/demo/deps.dart';
import '../pages/demo/deps/a.dart';
import '../pages/demo/lang.dart';
import '../pages/demo/nested/binding.dart';
import '../pages/demo/nested/index.dart';
import '../pages/demo/theme.dart';
import '../pages/home/home.dart';
import '../pages/login/login.dart';
import '../pages/my/my.dart';
import '../pages/notfound/notfound.dart';
import '../pages/splash/splash.dart';
import 'middleware/auth.dart';

part 'routes.dart';

/// 路由映射页面
class AppPages {
  /// 初始化页面
  static const init = AppRoutes.splash;

  /// getPages
  static final List<GetPage> routes = [
    // 首屏
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
    ),

    // 首页
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
    ),

    // 登录
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
    ),

    // 我的，需要认证
    GetPage(
      name: AppRoutes.my,
      page: () => MyPage(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),

    // 多语言
    GetPage(
      name: AppRoutes.langDemo,
      page: () => LangDemoPage(),
    ),

    // 主题
    GetPage(
      name: AppRoutes.themeDemo,
      page: () => ThemeDemoPage(),
    ),

    // 主从依赖关系页面
    GetPage(
      name: AppRoutes.depsDemo,
      page: () => DepsDemoPage(),
      children: [
        GetPage(
          name: '/a',
          page: () => DepsDemoAPage(),
        ),
      ],
    ),

    // 嵌套导航
    GetPage(
      name: AppRoutes.nestedDemo,
      page: () => NestedPages(),
      binding: NestedBinding(),
    ),
  ];

  static final notFound = GetPage(
    name: AppRoutes.notfound,
    page: () => NotfoundPage(),
  );

  // 查询动态路由
  // static GetPageRoute? getPageRouteByName(
  //     List<GetPage> pageRoutes, RouteSettings settings) {
  //   for (var item in pageRoutes) {
  //     if (item.name.compareTo(settings.name!) == 0) {
  //       return GetPageRoute(
  //         settings: settings,
  //         page: item.page,
  //         transition: item.transition,
  //       );
  //     }
  //     if (item.children.length > 0) {
  //       return getPageRouteByName(item.children, settings);
  //     }
  //   }
  // }
}
