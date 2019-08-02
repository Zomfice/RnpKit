//
//  RnpCAGradientLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpCAGradientLayerChain.h"
#define RPCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpCAGradientLayerChain *, CAGradientLayer)

@implementation RnpCAGradientLayerChain

RPCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(locations, NSArray<NSNumber *> *)
RPCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(startPoint, CGPoint)
RPCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(endPoint, CGPoint)
- (RnpCAGradientLayerChain * _Nonnull (^)(NSArray * _Nonnull))colors{
    return ^ (NSArray *colors){
        NSMutableArray *bridgeColors = [NSMutableArray array];
        for (id color in colors) {
            if ([color isKindOfClass:[UIColor class]]) {
                [bridgeColors addObject:(__bridge id)[color CGColor]];
            }else{
                [bridgeColors addObject:color];
            }
        }
        [(CAGradientLayer *)self.layer setColors:bridgeColors];
        return self;
    };
}

@end
RPCATEGORY_LAYER_IMPLEMENTATION(CAGradientLayer, RnpCAGradientLayerChain)
#undef RPCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION
