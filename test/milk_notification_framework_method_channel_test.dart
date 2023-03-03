import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:milk_notification_framework/milk_notification_framework_method_channel.dart';

void main() {
  MethodChannelMilkNotificationFramework platform = MethodChannelMilkNotificationFramework();
  const MethodChannel channel = MethodChannel('milk_notification_framework');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
