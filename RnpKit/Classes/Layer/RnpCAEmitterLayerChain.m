//
//  RnpCAEmitterLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpCAEmitterLayerChain.h"

#define RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpCAEmitterLayerChain *, CAEmitterLayer)

@implementation RnpCAEmitterLayerChain
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(emitterCells, NSArray<CAEmitterCell *> *)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(birthRate, float)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(lifetime, float)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(emitterPosition, CGPoint)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(emitterZPosition, CGFloat)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(emitterSize, CGSize)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(emitterDepth, CGFloat)

#ifdef __IPHONE_12_0
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(emitterShape, CAEmitterLayerEmitterShape)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(emitterMode, CAEmitterLayerEmitterMode)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(renderMode, CAEmitterLayerRenderMode)
#endif
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(preservesDepth, BOOL)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(velocity, float)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(scale, float)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(spin, float)
RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION(seed, unsigned int)
@end
RPCATEGORY_LAYER_IMPLEMENTATION(CAEmitterLayer, RnpCAEmitterLayerChain)
#undef RPCATEGORY_CHAIN_EMITTERLAYER_IMPLEMENTATION
