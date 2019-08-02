//
//  RnpCAReplicatorLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpCAReplicatorLayerChain.h"
#define RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpCAReplicatorLayerChain *, CAReplicatorLayer)

@implementation RnpCAReplicatorLayerChain
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceCount, NSInteger)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(preservesDepth, BOOL)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceDelay, CFTimeInterval)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceTransform, CATransform3D)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceColor, CGColorRef)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceRedOffset, float)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceGreenOffset, float)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceBlueOffset, float)
RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceAlphaOffset, float)
@end
RPCATEGORY_LAYER_IMPLEMENTATION(CAReplicatorLayer, RnpCAReplicatorLayerChain)
#undef RPCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION