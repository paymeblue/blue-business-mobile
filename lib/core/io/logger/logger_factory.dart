import 'dart:convert';

import 'package:logger/logger.dart' as flog;

// @author Anyanwu Nzubechi

enum LogLevel {
  debug('DEBUG'),
  info('INFO'),
  warning('WARNING'),
  error('ERROR'),
  severe('SEVERE'),
  all('ALL');

  const LogLevel(this.key);
  final String key;
}

abstract class Logger {
  bool isLoggable(LogLevel level);
  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void info(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void warning(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void error(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void severe(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void setLevel(LogLevel level);
  void log(LogLevel level, dynamic message,
      [dynamic error, StackTrace? stackTrace]);
}

class LoggerFactory {
  static final _logger = flog.Logger();
  static Logger getLogger() {
    return CrashlyticsLogger(_logger)..setLevel(LogLevel.all);
  }
}

class CrashlyticsLogger implements Logger {
  CrashlyticsLogger(this._logger);

  final flog.Logger _logger;

  LogLevel? _level;

  @override
  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(message, error, stackTrace);
  }

  @override
  void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error, stackTrace ?? StackTrace.current);
  }

  @override
  void severe(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.wtf(message, error, stackTrace ?? StackTrace.current);
  }

  @override
  void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error, stackTrace);
  }

  @override
  bool isLoggable(LogLevel level) {
    return _level == LogLevel.all;
  }

  @override
  void log(LogLevel level, dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    switch (level) {
      case LogLevel.debug:
        debug(message, error, stackTrace);
      case LogLevel.info:
        info(message, error, stackTrace);
      case LogLevel.warning:
        warning(message, error, stackTrace);
      case LogLevel.error:
        this.error(message, error, stackTrace);
      case LogLevel.severe:
        severe(message, error, stackTrace);
      case LogLevel.all:
        debug(message, error, stackTrace);
    }
  }

  @override
  void setLevel(LogLevel level) {
    _level = level;
    flog.Logger.level = switch (level) {
      LogLevel.debug => flog.Level.debug,
      LogLevel.info => flog.Level.info,
      LogLevel.warning => flog.Level.warning,
      LogLevel.error => flog.Level.error,
      LogLevel.severe => flog.Level.wtf,
      _ => flog.Level.nothing
    };
  }

  @override
  void warning(dynamic message, [dynamic error, StackTrace? stackTrace]) {}
}

// ignore: unused_element
String _stringifyMessage(dynamic message) {
  // ignore: avoid_dynamic_calls
  final finalMessage = message is Function ? message() : message;
  if (finalMessage is Map || finalMessage is Iterable) {
    final encoder = JsonEncoder.withIndent('  ', (a) => a.toString());
    return encoder.convert(finalMessage);
  } else {
    return finalMessage.toString();
  }
}
