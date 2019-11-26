//
//  RnpUIActivityIndicatorViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUIActivityIndicatorViewChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIActivityIndicatorViewChain *,UIActivityIndicatorView)
@implementation RnpUIActivityIndicatorViewChain

RPCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(activityIndicatorViewStyle,UIActivityIndicatorViewStyle)
RPCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(hidesWhenStopped,BOOL)
RPCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(color,UIColor *)

- (RnpUIActivityIndicatorViewChain * _Nonnull (^)(void))startAnimating{
    return ^()
    {
        [(UIActivityIndicatorView *)self.view startAnimating];
        return self;
    };
}


- (RnpUIActivityIndicatorViewChain * _Nonnull (^)(void))stopAnimating{
    return ^()
    {
        [(UIActivityIndicatorView *)self.view stopAnimating];
        return self;
    };
}

@end

RPCATEGORY_VIEW_IMPLEMENTATION(UIActivityIndicatorView, RnpUIActivityIndicatorViewChain)
#undef RPCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION
