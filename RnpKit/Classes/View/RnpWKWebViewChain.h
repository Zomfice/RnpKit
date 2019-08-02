//
//  RnpWKWebViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseScrollViewChain.h"
#if __has_include(<WebKit/WebKit.h>)
#import <WebKit/WebKit.h>
#else
@import WebKit;
#endif
NS_ASSUME_NONNULL_BEGIN
@class RnpWKWebViewChain;
@interface RnpWKWebViewChain : RnpBaseScrollViewChain<RnpWKWebViewChain*>

@end
RPCreate(WKWebView)
RPCATEGORY_EXINTERFACE(WKWebView, RnpWKWebViewChain)
NS_ASSUME_NONNULL_END
