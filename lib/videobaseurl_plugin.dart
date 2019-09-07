import 'dart:async';

import 'package:flutter/services.dart';

const String VIDEO_BASE_URL = "http://39.98.219.121/";


class VideobaseurlPlugin {
  static const MethodChannel _channel =
      const MethodChannel('videobaseurl_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
