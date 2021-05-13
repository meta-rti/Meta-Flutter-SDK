
import 'dart:async';

import 'package:flutter/services.dart';

class Rtc {
  static const MethodChannel _channel =
      const MethodChannel('rtc');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
