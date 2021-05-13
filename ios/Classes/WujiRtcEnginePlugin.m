#import "WujiRtcEnginePlugin.h"
#if __has_include(<wuji_rtc_engine/wuji_rtc_engine-Swift.h>)
#import <wuji_rtc_engine/wuji_rtc_engine-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wuji_rtc_engine-Swift.h"
#endif

@implementation WujiRtcEnginePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWujiRtcEnginePlugin registerWithRegistrar:registrar];
}
@end
