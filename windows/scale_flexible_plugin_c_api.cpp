#include "include/scale_flexible/scale_flexible_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "scale_flexible_plugin.h"

void ScaleFlexiblePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  scale_flexible::ScaleFlexiblePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
