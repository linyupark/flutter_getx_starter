import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/// 应用初始化统筹服务
class AppService extends GetxService {
  static Future init() async {
    print('starting init services ...');
    // await GetStorage.init();
    await Get.putAsync(() => GlobalConfigService().init());
    print('All init services started...');
  }
}

/// 全局配置服务
class GlobalConfigService extends GetxService {
  /// 持久化数据
  GetStorage userdata = GetStorage('userdata');

  /// 发布渠道
  RxString channel = ''.obs;

  Future<GlobalConfigService> init() async {
    channel.value = 'MI9CC';
    userdata.listen(() {
      print('userdata login status change: ${userdata.read('login')}');
    });
    return this;
  }
}
