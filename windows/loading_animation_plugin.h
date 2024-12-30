#ifndef FLUTTER_PLUGIN_LOADING_ANIMATION_PLUGIN_H_
#define FLUTTER_PLUGIN_LOADING_ANIMATION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace loading_animation {

class LoadingAnimationPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  LoadingAnimationPlugin();

  virtual ~LoadingAnimationPlugin();

  // Disallow copy and assign.
  LoadingAnimationPlugin(const LoadingAnimationPlugin&) = delete;
  LoadingAnimationPlugin& operator=(const LoadingAnimationPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace loading_animation

#endif  // FLUTTER_PLUGIN_LOADING_ANIMATION_PLUGIN_H_
