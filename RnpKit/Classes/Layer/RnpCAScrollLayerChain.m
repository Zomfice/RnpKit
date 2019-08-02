//
//  RnpCAScrollLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpCAScrollLayerChain.h"
#define RPCATEGORY_CHAIN_SCROLLLAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpCAScrollLayerChain *, CAScrollLayer)

@implementation RnpCAScrollLayerChain

RPCATEGORY_CHAIN_SCROLLLAYER_IMPLEMENTATION(scrollMode, CAScrollLayerScrollMode)

- (RnpCAScrollLayerChain * _Nonnull (^)(CGRect))scrollToRect{
    return ^ (CGRect rect){
        [(CAScrollLayer *)self.layer scrollToRect:rect];
        return self;
    };
}

- (RnpCAScrollLayerChain * _Nonnull (^)(CGPoint))scrollToPoint{
    return ^ (CGPoint point){
        [(CAScrollLayer *)self.layer scrollToPoint:point];
        return self;
    };
}

@end
RPCATEGORY_LAYER_IMPLEMENTATION(CAScrollLayer, RnpCAScrollLayerChain)
#undef RPCATEGORY_CHAIN_SCROLLLAYER_IMPLEMENTATION
