//
//  RnpCATiledLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCATiledLayerChain;
@interface RnpCATiledLayerChain : RnpBaseLayerChain<RnpCATiledLayerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpCATiledLayerChain * (^ levelsOfDetail) (size_t levelsOfDetail);
RPCATEGORY_CHAIN_PROPERTY RnpCATiledLayerChain * (^ levelsOfDetailBias) (size_t levelsOfDetailBias);
RPCATEGORY_CHAIN_PROPERTY RnpCATiledLayerChain * (^ tileSize) (CGSize tileSize);
@end
RPCreateLayer(CATiledLayer)
RPCATEGORY_EXINTERFACE(CATiledLayer, RnpCATiledLayerChain)
NS_ASSUME_NONNULL_END
