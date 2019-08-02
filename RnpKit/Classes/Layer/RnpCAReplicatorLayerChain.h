//
//  RnpCAReplicatorLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCAReplicatorLayerChain;
@interface RnpCAReplicatorLayerChain : RnpBaseLayerChain<RnpCAReplicatorLayerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceCount) (NSInteger instanceCount);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ preservesDepth) (BOOL preservesDepth);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceDelay) (CFTimeInterval instanceDelay);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceTransform) (CATransform3D instanceTransform);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceColor) (CGColorRef instanceColor);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceRedOffset) (float instanceRedOffset);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceGreenOffset) (float instanceGreenOffset);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceBlueOffset) (float instanceBlueOffset);
RPCATEGORY_CHAIN_PROPERTY RnpCAReplicatorLayerChain * (^ instanceAlphaOffset) (float instanceAlphaOffset);
@end
RPCreateLayer(CAReplicatorLayer)
RPCATEGORY_EXINTERFACE(CAReplicatorLayer, RnpCAReplicatorLayerChain)
NS_ASSUME_NONNULL_END
