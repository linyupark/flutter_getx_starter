import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 自定义包空一行
import 'common/utils/logger.dart';
import 'router/pages.dart';
import 'services/app_init.dart';
import 'services/translation/translation.dart';

Future<void> main() async {
  await AppService.init();
  runApp(FastpayApp());
}

///
class FastpayApp extends StatelessWidget {
  ///
  FastpayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.init,
      defaultTransition: Transition.native,
      getPages: AppPages.routes,
      unknownRoute: AppPages.notFound,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
