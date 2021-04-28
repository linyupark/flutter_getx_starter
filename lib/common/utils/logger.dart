/// 封装logger
class Logger {
  // 举例
  static void write(String text, {bool isError = false}) {
    Future.microtask(() => print('** $text. isError: [$isError]'));
  }
}
