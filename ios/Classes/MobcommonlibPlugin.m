#import "MobcommonlibPlugin.h"
#import <MOBFoundation/MobSDK.h>
#import <MOBFoundation/MobSDK+Privacy.h>


@implementation MobcommonlibPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"com.mob.mobcommonlib"
            binaryMessenger:[registrar messenger]];
  MobcommonlibPlugin* instance = [[MobcommonlibPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  }else if ([@"submitPolicyGrantResult" isEqualToString:call.method]) {
      
      NSDictionary *arguments = [call arguments];
      BOOL granted = [arguments[@"granted"] boolValue];
      [MobSDK uploadPrivacyPermissionStatus:granted onResult:^(BOOL success) {
          
      }];
      
      result(@{});
  } else {
    result(FlutterMethodNotImplemented);
  }
    
}

@end
