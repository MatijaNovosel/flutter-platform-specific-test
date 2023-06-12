import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'testing_method_channel.dart';

abstract class TestingPlatform extends PlatformInterface {
  TestingPlatform() : super(token: _token);
  static final Object _token = Object();
  static TestingPlatform _instance = MethodChannelTesting();

  static TestingPlatform get instance => _instance;

  static set instance(TestingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
