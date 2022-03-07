part of app_logger;

class LoggerConfig {
  const LoggerConfig._(
      this.enabledTypes, {
        this.colors = false,
        this.printEmojis = false,
      });

  factory LoggerConfig.custom(
      Iterable<LogType> enabledTypes, {
        bool colors = false,
        bool printEmojis = false,
      }) =>
      LoggerConfig._(
        enabledTypes,
        colors: colors,
        printEmojis: printEmojis,
      );

  factory LoggerConfig.nothing() => const LoggerConfig._([]);

  factory LoggerConfig.all({
    bool colors = false,
    bool printEmojis = false,
  }) =>
      LoggerConfig._(
        LogType.values,
        colors: colors,
        printEmojis: printEmojis,
      );

  factory LoggerConfig.debug({
    bool colors = false,
    bool printEmojis = false,
  }) =>
      LoggerConfig._(
        [LogType.debug, LogType.exceptions],
        colors: colors,
        printEmojis: printEmojis,
      );

  factory LoggerConfig.data({
    bool colors = false,
    bool printEmojis = false,
  }) =>
      LoggerConfig._(
        [LogType.debug, LogType.exceptions, LogType.data],
        colors: colors,
        printEmojis: printEmojis,
      );

  factory LoggerConfig.domain({
    bool colors = false,
    bool printEmojis = false,
  }) =>
      LoggerConfig._(
        [LogType.debug, LogType.exceptions, LogType.domain],
        colors: colors,
        printEmojis: printEmojis,
      );

  factory LoggerConfig.ui({
    bool colors = false,
    bool printEmojis = false,
  }) =>
      LoggerConfig._(
        [LogType.debug, LogType.exceptions, LogType.ui],
        colors: colors,
        printEmojis: printEmojis,
      );

  final Iterable<LogType> enabledTypes;

  final bool colors;

  final bool printEmojis;

  static LoggerConfig get current => getIt<LoggerConfig>();

  static void init(LoggerConfig config) =>
      GetIt.instance.registerSingleton<LoggerConfig>(config);

  static bool isEnabled(LogType type) => current.enabledTypes.contains(type);
}
