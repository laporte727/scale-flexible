
import 'scale_flexible_platform_interface.dart';

class ScaleFlexible {
  Future<String?> getPlatformVersion() {
    return ScaleFlexiblePlatform.instance.getPlatformVersion();
  }
}
