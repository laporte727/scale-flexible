import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'scale_flexible_platform_interface.dart';

/// An implementation of [ScaleFlexiblePlatform] that uses method channels.
class MethodChannelScaleFlexible extends ScaleFlexiblePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('scale_flexible');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
