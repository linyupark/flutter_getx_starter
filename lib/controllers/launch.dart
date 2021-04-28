import 'package:get/get.dart';

/// 启动页逻辑以及存储
class LaunchController extends GetxController {
  ///
  Future<void> init() async {
    await BaseInfoService().init();
    // ignore: avoid_print
    print('All services started...');
  }
}

///
class BaseInfoService extends GetxService {
  ///
  Future<void> init() async {
    await 1.delay();
    print('baseInfoService finished...');
  }
}
