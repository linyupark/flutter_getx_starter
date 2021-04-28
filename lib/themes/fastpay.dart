import 'package:flutter/material.dart';

/// 文案主题
class FPTextTheme extends TextTheme {
  FPTextTheme({
    required this.isDarkTheme,
  });

  /// 是否在暗黑主题
  final bool isDarkTheme;

  /// 货币数字
  TextStyle get amountXXL => TextStyle(fontSize: 70);
  TextStyle get amountXL => TextStyle(fontSize: 52);
  TextStyle get amountL => TextStyle(fontSize: 50);
  TextStyle get amountM => TextStyle(fontSize: 40);
  TextStyle get amountS => TextStyle(fontSize: 36);

  /// 标题
  TextStyle get titleModal => TextStyle(fontSize: 38);
  @override
  TextStyle get title => TextStyle(fontSize: 30);

  /// 正文
  TextStyle get textXL => TextStyle(fontSize: 28);
  TextStyle get textL => TextStyle(fontSize: 26);
  TextStyle get textM => TextStyle(fontSize: 24);
  TextStyle get textS => TextStyle(fontSize: 22);
}

/// 颜色板
class FPColorScheme {
  /// 官方浅色
  static ColorScheme light = ColorScheme.light();

  /// 官方暗黑
  static ColorScheme dark = ColorScheme.dark();

  /// 分割线
  static Color divider = Color(0xffc3c3c3);

  /// 淡灰色背景色
  static Color greyBg = Color(0xffededed);

  /// 普通提示语
  static Color tips = Color(0xff999999);

  /// 输入框提示
  static Color placeholder = Color(0xffd6d6d6);

  /// 正标题
  static Color blackHead = Color(0xff232323);

  /// 辅助色
  static Color green = Color(0xff6fa973);
  static Color yellow = Color(0xfff7b756);
  static Color macaron = Color(0xff6ebec3);
  static Color sky = Color(0xff18a0d4);
  static Color orange = Color(0xffed9355);
  static Color red = Color(0xffed0e0f);
}

/// 整体主题
class FPTheme {
  // 浅色主题
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Color(0xff00a0e9),
      backgroundColor: Color(0xffffffff),
      scaffoldBackgroundColor: FPColorScheme.greyBg,
      textTheme: FPTextTheme(
        isDarkTheme: false,
      ),
    );
  }

  // 暗黑主题
  static ThemeData get darkTheme {
    return ThemeData();
  }
}

FPTheme fpTheme = FPTheme();
