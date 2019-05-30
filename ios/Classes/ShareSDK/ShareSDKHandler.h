
#import "ShareSDKJSBridge.h"
#import "ShareSDKHybrid.h"

@interface ShareSDKHandler : NSObject 

+ (ShareSDKHandler *)sharedHandler;

/**
 *    @brief    捕获WebView中请求，将此方法放入webView:shouldStartLoadWithRequest:navigationType:委托方法中
 *
 *    @param     request     请求对象
 *  @param  webView     Web视图对象
 *
 *    @return    YES 表示为ShareSDK接口请求，请求被捕获。NO 表示非ShareSDK接口请求，不捕获请求
 */
- (BOOL)captureRequest:(NSURLRequest *)request webView:(WKWebView *)webView;

@end