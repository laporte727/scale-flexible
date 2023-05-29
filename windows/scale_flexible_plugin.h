#ifndef FLUTTER_PLUGIN_SCALE_FLEXIBLE_PLUGIN_H_
#define FLUTTER_PLUGIN_SCALE_FLEXIBLE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace scale_flexible {

class ScaleFlexiblePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ScaleFlexiblePlugin();

  virtual ~ScaleFlexiblePlugin();

  // Disallow copy and assign.
  ScaleFlexiblePlugin(const ScaleFlexiblePlugin&) = delete;
  ScaleFlexiblePlugin& operator=(const ScaleFlexiblePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace scale_flexible

#endif  // FLUTTER_PLUGIN_SCALE_FLEXIBLE_PLUGIN_H_
