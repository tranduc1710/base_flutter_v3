#ifndef FLUTTER_PLUGIN_BASE_FLUTTER_V3_PLUGIN_H_
#define FLUTTER_PLUGIN_BASE_FLUTTER_V3_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace base_flutter_v3 {

class BaseFlutterV3Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BaseFlutterV3Plugin();

  virtual ~BaseFlutterV3Plugin();

  // Disallow copy and assign.
  BaseFlutterV3Plugin(const BaseFlutterV3Plugin&) = delete;
  BaseFlutterV3Plugin& operator=(const BaseFlutterV3Plugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace base_flutter_v3

#endif  // FLUTTER_PLUGIN_BASE_FLUTTER_V3_PLUGIN_H_
