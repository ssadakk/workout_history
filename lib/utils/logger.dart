
import 'dart:convert';
import 'dart:io';

import 'package:logger/logger.dart';

class Log {
  static final prettyPrinter = PrettyPrinter(methodCount: 0, printEmojis: false, printTime: true);

  static v(dynamic message) {
    Logger(printer: prettyPrinter).v(message);
  }

  static d(dynamic message) {
    Logger(printer: prettyPrinter).d(message);
  }

  static i(dynamic message) {
    Logger(printer: prettyPrinter).i(message);
  }

  static w(dynamic message) {
    Logger(printer: prettyPrinter).w(message);
  }

  static e(dynamic message) {
    Logger(printer: prettyPrinter).e(message);
  }

  static longPrint(String text) {
    final pattern = RegExp('.{1,600}');
    pattern.allMatches(text).forEach((match) => i(match.group(0)));
  }

  static void debugJson(dynamic json) {
    Log.d(jsonDecode(jsonEncode(json)));
  }

  static void infoJson(dynamic json) {
    Log.i(jsonDecode(jsonEncode(json)));
  }
}