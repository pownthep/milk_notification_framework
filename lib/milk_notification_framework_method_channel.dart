import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'milk_notification_framework_platform_interface.dart';

/// An implementation of [MilkNotificationFrameworkPlatform] that uses method channels.
class MethodChannelMilkNotificationFramework extends MilkNotificationFrameworkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('milk_notification_framework');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
