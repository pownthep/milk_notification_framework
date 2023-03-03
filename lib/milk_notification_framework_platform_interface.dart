import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'milk_notification_framework_method_channel.dart';

abstract class MilkNotificationFrameworkPlatform extends PlatformInterface {
  /// Constructs a MilkNotificationFrameworkPlatform.
  MilkNotificationFrameworkPlatform() : super(token: _token);

  static final Object _token = Object();

  static MilkNotificationFrameworkPlatform _instance = MethodChannelMilkNotificationFramework();

  /// The default instance of [MilkNotificationFrameworkPlatform] to use.
  ///
  /// Defaults to [MethodChannelMilkNotificationFramework].
  static MilkNotificationFrameworkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MilkNotificationFrameworkPlatform] when
  /// they register themselves.
  static set instance(MilkNotificationFrameworkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
