#import "MetaRtcEnginePlugin.h"
#if __has_include(<meta_rtc_engine/meta_rtc_engine-Swift.h>)
#import <meta_rtc_engine/meta_rtc_engine-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "meta_rtc_engine-Swift.h"
#endif

@implementation MetaRtcEnginePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMetaRtcEnginePlugin registerWithRegistrar:registrar];
}
@end
