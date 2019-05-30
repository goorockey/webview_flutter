#import "ShareSDKHandler.h"
#import "ShareSDKJSBridge.h"
#import "ShareSDKHybrid.h"

static ShareSDKHybrid *_instance = nil;

@interface ShareSDKHandler()
{
  @private
  ShareSDKJSBridge *_bridge; // uiwebview
  ShareSDKHybrid *_hybrid;   // wkwebview
}
@end

@implementation ShareSDKHandler

- (BOOL)captureRequest:(WKNavigationAction*)navigationAction webView:(WKWebView *)webView
{
  if ([[ShareSDKHybrid sharedHybrid] captureRequest:navigationAction.request webView:webView]) {
    return YES;
  }

  return NO;
}


+ (ShareSDKHandler *)sharedHandler
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instance == nil)
        {
            _instance = [[ShareSDKHandler alloc] init];
        }
    });
    return _instance;
}

@end