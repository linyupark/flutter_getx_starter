import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

import '../../controllers/launch.dart';
import '../../router/pages.dart';

///
class SplashPage extends HookWidget {
  ///
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _launchController = Get.put(LaunchController());
    final _baseInfo = Get.put(BaseInfoService());

    Future<void> onLaunch() async {
      await _launchController.init();
      await _baseInfo.init();
      await Get.toNamed(AppRoutes.home);
    }

    useEffect(() {
      onLaunch();
      return;
    }, []);

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Text(''),
          ),
          Expanded(
            child: Image.asset(
              'icons/home_logo_icon@2x.png',
              width: Get.width / 750 * 520,
            ),
          )
        ],
      ),
    );
  }
}
