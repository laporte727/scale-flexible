import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'scale_flexible_method_channel.dart';

abstract class ScaleFlexiblePlatform extends PlatformInterface {
  /// Constructs a ScaleFlexiblePlatform.
  ScaleFlexiblePlatform() : super(token: _token);

  static final Object _token = Object();

  static ScaleFlexiblePlatform _instance = MethodChannelScaleFlexible();

  /// The default instance of [ScaleFlexiblePlatform] to use.
  ///
  /// Defaults to [MethodChannelScaleFlexible].
  static ScaleFlexiblePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ScaleFlexiblePlatform] when
  /// they register themselves.
  static set instance(ScaleFlexiblePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
