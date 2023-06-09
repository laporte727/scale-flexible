#import "ScaleFlexiblePlugin.h"
#if __has_include(<scale_flexible/scale_flexible-Swift.h>)
#import <scale_flexible/scale_flexible-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "scale_flexible-Swift.h"
#endif

@implementation ScaleFlexiblePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftScaleFlexiblePlugin registerWithRegistrar:registrar];
}
@end
