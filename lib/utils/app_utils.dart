import 'dart:math';

abstract class AppUtils {
  static int intInRange(int start, int end) {
    try {
      return (Random().nextDouble() * (end - start) + start).toInt();
    } catch (_) {
      return 0;
    }
  }
}