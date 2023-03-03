import 'package:flutter_test/flutter_test.dart';
import 'package:milk_notification_framework/milk_notification_framework.dart';
import 'package:milk_notification_framework/milk_notification_framework_platform_interface.dart';
import 'package:milk_notification_framework/milk_notification_framework_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMilkNotificationFrameworkPlatform
    with MockPlatformInterfaceMixin
    implements MilkNotificationFrameworkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MilkNotificationFrameworkPlatform initialPlatform = MilkNotificationFrameworkPlatform.instance;

  test('$MethodChannelMilkNotificationFramework is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMilkNotificationFramework>());
  });

  test('getPlatformVersion', () async {
    MilkNotificationFramework milkNotificationFrameworkPlugin = MilkNotificationFramework();
    MockMilkNotificationFrameworkPlatform fakePlatform = MockMilkNotificationFrameworkPlatform();
    MilkNotificationFrameworkPlatform.instance = fakePlatform;

    expect(await milkNotificationFrameworkPlugin.getPlatformVersion(), '42');
  });
}
