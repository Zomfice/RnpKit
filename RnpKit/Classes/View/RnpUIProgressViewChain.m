//
//  RnpUIProgressViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUIProgressViewChain.h"
#define RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIProgressViewChain *,UIProgressView)
@implementation RnpUIProgressViewChain

RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progressViewStyle, UIProgressViewStyle)
RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progress, float)
RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progressTintColor, UIColor*)
RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(trackTintColor, UIColor*)
RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progressImage, UIImage*)
RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(trackImage, UIImage*)
RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(observedProgress, NSProgress *)

- (RnpUIProgressViewChain * _Nonnull (^)(float, BOOL))setProgressAnimated{
    return ^ (float p, BOOL a){
        [(UIProgressView *)self.view setProgress:p animated:a];
        return self;
    };
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UIProgressView, RnpUIProgressViewChain)
#undef RPCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION
