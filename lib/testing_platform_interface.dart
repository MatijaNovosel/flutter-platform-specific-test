import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'testing_method_channel.dart';

abstract class TestingPlatform extends PlatformInterface {
  /// Constructs a TestingPlatform.
  TestingPlatform() : super(token: _token);

  static final Object _token = Object();

  static TestingPlatform _instance = MethodChannelTesting();

  /// The default instance of [TestingPlatform] to use.
  ///
  /// Defaults to [MethodChannelTesting].
  static TestingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestingPlatform] when
  /// they register themselves.
  static set instance(TestingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
