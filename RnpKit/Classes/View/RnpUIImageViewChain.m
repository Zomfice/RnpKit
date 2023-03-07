//
//  RnpUIImageViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUIImageViewChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIImageViewChain *,UIImageView)
@implementation RnpUIImageViewChain

RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(image, UIImage *);
RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlightedImage, UIImage *);
RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlighted, BOOL);
RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationImages, NSArray<UIImage *> *)
RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlightedAnimationImages, NSArray<UIImage *> *)
RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationDuration, NSTimeInterval)
RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationRepeatCount, NSInteger)

- (RnpUIImageViewChain * _Nonnull (^)(void))startAnimating{
    return ^ (){
        [self.view startAnimating];
        return self;
    };
}

- (RnpUIImageViewChain * _Nonnull (^)(void))stopAnimating{
    return ^ (){
        [self.view stopAnimating];
        return self;
    };
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UIImageView, RnpUIImageViewChain)
#undef RPCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION
