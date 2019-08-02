//
//  RnpCAEmitterLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCAEmitterLayerChain;
@interface RnpCAEmitterLayerChain : RnpBaseLayerChain<RnpCAEmitterLayerChain*>

RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ emitterCells) (NSArray<CAEmitterCell *> * emitterCells);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ birthRate) (float birthRate);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ lifetime) (float lifetime);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ emitterPosition) (CGPoint emitterPosition);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ emitterZPosition) (CGFloat emitterZPosition);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ emitterSize) (CGSize emitterSize);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ emitterDepth) (CGFloat emitterDepth);

#ifdef __IPHONE_12_0
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ emitterShape) (CAEmitterLayerEmitterShape emitterShape);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ emitterMode) (CAEmitterLayerEmitterMode emitterMode);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ renderMode) (CAEmitterLayerRenderMode renderMode);

#endif
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ preservesDepth) (BOOL preservesDepth);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ velocity) (float velocity);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ scale) (float scale);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ spin) (float spin);
RPCATEGORY_CHAIN_PROPERTY RnpCAEmitterLayerChain * (^ seed) (unsigned int seed);

@end
RPCreateLayer(CAEmitterLayer)
RPCATEGORY_EXINTERFACE(CAEmitterLayer, RnpCAEmitterLayerChain)
NS_ASSUME_NONNULL_END
