//
//  RnpCATransformLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpCATransformLayerChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_TRANSFORMLAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpCATransformLayerChain *, CATransformLayer)

@implementation RnpCATransformLayerChain

@end
RPCATEGORY_LAYER_IMPLEMENTATION(CATransformLayer, RnpCATransformLayerChain)
#undef RPCATEGORY_CHAIN_TRANSFORMLAYER_IMPLEMENTATION
