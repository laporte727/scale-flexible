//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <scale_flexible/scale_flexible_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) scale_flexible_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ScaleFlexiblePlugin");
  scale_flexible_plugin_register_with_registrar(scale_flexible_registrar);
}
