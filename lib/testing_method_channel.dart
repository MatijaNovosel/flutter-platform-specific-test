import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'testing_platform_interface.dart';

/// An implementation of [TestingPlatform] that uses method channels.
class MethodChannelTesting extends TestingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('testing');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
