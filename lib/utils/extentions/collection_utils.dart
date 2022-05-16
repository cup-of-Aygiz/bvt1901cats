class IterableUtils {
  static bool isNullOrEmpty(Iterable? data) {
    return data == null || data.isEmpty;
  }

  static bool isNotEmpty(Iterable? data) {
    return data?.isNotEmpty == true;
  }

  static T? getFirstOrNull<T>(Iterable<T>? data) {
    return IterableUtils.isNotEmpty(data) ? data?.first : null;
  }

  static T? getLastOrNull<T>(Iterable<T> data) {
    return IterableUtils.isNotEmpty(data) ? data.last : null;
  }

  static T? getElementAtOrNull<T>(Iterable<T> data, int index) {
    return IterableUtils.isNotEmpty(data) && index < data.length
        ? data.elementAt(index)
        : null;
  }

  static String string(Iterable iterable) {
    final concatenate = StringBuffer();
    for (var item in iterable) {
      concatenate.write(item?.toString());
    }
    return concatenate.toString();
  }

  static String listToString(Iterable items) =>
      items.map((e) => e?.toString()).toString();
}

extension IterableExtention<T> on Iterable<T> {
  bool isNullOrEmpty() {
    return IterableUtils.isNullOrEmpty(this);
  }

  T? getFirstOrNull() {
    return IterableUtils.getFirstOrNull<T>(this);
  }

  T? getLastOrNull() {
    return IterableUtils.getLastOrNull<T>(this);
  }

  T? getElementAtOrNull(int index) {
    return IterableUtils.getElementAtOrNull<T>(this, index);
  }
}
