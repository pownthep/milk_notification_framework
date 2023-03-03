#include "include/milk_notification_framework/milk_notification_framework_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "milk_notification_framework_plugin.h"

void MilkNotificationFrameworkPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  milk_notification_framework::MilkNotificationFrameworkPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
