#ifndef FLUTTER_PLUGIN_MILK_NOTIFICATION_FRAMEWORK_PLUGIN_H_
#define FLUTTER_PLUGIN_MILK_NOTIFICATION_FRAMEWORK_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace milk_notification_framework {

class MilkNotificationFrameworkPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MilkNotificationFrameworkPlugin();

  virtual ~MilkNotificationFrameworkPlugin();

  // Disallow copy and assign.
  MilkNotificationFrameworkPlugin(const MilkNotificationFrameworkPlugin&) = delete;
  MilkNotificationFrameworkPlugin& operator=(const MilkNotificationFrameworkPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace milk_notification_framework

#endif  // FLUTTER_PLUGIN_MILK_NOTIFICATION_FRAMEWORK_PLUGIN_H_
