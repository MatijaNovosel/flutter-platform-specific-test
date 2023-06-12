import 'package:flutter_test/flutter_test.dart';
import 'package:testing/testing.dart';
import 'package:testing/testing_platform_interface.dart';
import 'package:testing/testing_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTestingPlatform
    with MockPlatformInterfaceMixin
    implements TestingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TestingPlatform initialPlatform = TestingPlatform.instance;

  test('$MethodChannelTesting is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTesting>());
  });

  test('getPlatformVersion', () async {
    Testing testingPlugin = Testing();
    MockTestingPlatform fakePlatform = MockTestingPlatform();
    TestingPlatform.instance = fakePlatform;

    expect(await testingPlugin.getPlatformVersion(), '42');
  });
}
