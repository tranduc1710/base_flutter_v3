#include "include/base_flutter_v3/base_flutter_v3_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "base_flutter_v3_plugin.h"

void BaseFlutterV3PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  base_flutter_v3::BaseFlutterV3Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
