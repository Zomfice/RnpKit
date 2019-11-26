//
//  RnpCATiledLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpCATiledLayerChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_TILEDLAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpCATiledLayerChain *, CATiledLayer)

@implementation RnpCATiledLayerChain
RPCATEGORY_CHAIN_TILEDLAYER_IMPLEMENTATION(levelsOfDetail, size_t)
RPCATEGORY_CHAIN_TILEDLAYER_IMPLEMENTATION(levelsOfDetailBias,size_t)
RPCATEGORY_CHAIN_TILEDLAYER_IMPLEMENTATION(tileSize,CGSize)
@end
RPCATEGORY_LAYER_IMPLEMENTATION(CATiledLayer, RnpCATiledLayerChain)
#undef RPCATEGORY_CHAIN_TILEDLAYER_IMPLEMENTATION
