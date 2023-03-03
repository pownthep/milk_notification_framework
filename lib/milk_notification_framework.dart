
import 'milk_notification_framework_platform_interface.dart';

class MilkNotificationFramework {
  Future<String?> getPlatformVersion() {
    return MilkNotificationFrameworkPlatform.instance.getPlatformVersion();
  }
}
