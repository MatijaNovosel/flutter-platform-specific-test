import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'testing_platform_interface.dart';

class MethodChannelTesting extends TestingPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('testing');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
