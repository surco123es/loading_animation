#include "include/loading_animation/loading_animation_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "loading_animation_plugin.h"

void LoadingAnimationPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  loading_animation::LoadingAnimationPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
