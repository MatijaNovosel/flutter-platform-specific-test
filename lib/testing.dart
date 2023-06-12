import 'testing_platform_interface.dart';

class Testing {
  Future<String?> getPlatformVersion() {
    return TestingPlatform.instance.getPlatformVersion();
  }
}
