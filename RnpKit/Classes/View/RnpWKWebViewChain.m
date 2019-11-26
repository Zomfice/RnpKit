//
//  RnpWKWebViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpWKWebViewChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_WEBVIEW_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpWKWebViewChain *,WKWebView)
@implementation RnpWKWebViewChain

@end
RPCATEGORY_VIEW_IMPLEMENTATION(WKWebView, RnpWKWebViewChain)
#undef RPCATEGORY_CHAIN_WEBVIEW_IMPLEMENTATION
