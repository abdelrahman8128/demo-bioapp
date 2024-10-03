//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<sahha_flutter/SahhaFlutterPlugin.h>)
#import <sahha_flutter/SahhaFlutterPlugin.h>
#else
@import sahha_flutter;
#endif

#if __has_include(<shared_preferences_foundation/SharedPreferencesPlugin.h>)
#import <shared_preferences_foundation/SharedPreferencesPlugin.h>
#else
@import shared_preferences_foundation;
#endif

#if __has_include(<webview_flutter_wkwebview/FLTWebViewFlutterPlugin.h>)
#import <webview_flutter_wkwebview/FLTWebViewFlutterPlugin.h>
#else
@import webview_flutter_wkwebview;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [SahhaFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"SahhaFlutterPlugin"]];
  [SharedPreferencesPlugin registerWithRegistrar:[registry registrarForPlugin:@"SharedPreferencesPlugin"]];
  [FLTWebViewFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTWebViewFlutterPlugin"]];
}

@end
