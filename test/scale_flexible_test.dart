import 'package:flutter_test/flutter_test.dart';
import 'package:scale_flexible/scale_flexible.dart';
import 'package:scale_flexible/scale_flexible_platform_interface.dart';
import 'package:scale_flexible/scale_flexible_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockScaleFlexiblePlatform 
    with MockPlatformInterfaceMixin
    implements ScaleFlexiblePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ScaleFlexiblePlatform initialPlatform = ScaleFlexiblePlatform.instance;

  test('$MethodChannelScaleFlexible is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelScaleFlexible>());
  });

  test('getPlatformVersion', () async {
    ScaleFlexible scaleFlexiblePlugin = ScaleFlexible();
    MockScaleFlexiblePlatform fakePlatform = MockScaleFlexiblePlatform();
    ScaleFlexiblePlatform.instance = fakePlatform;
  
    expect(await scaleFlexiblePlugin.getPlatformVersion(), '42');
  });
}
