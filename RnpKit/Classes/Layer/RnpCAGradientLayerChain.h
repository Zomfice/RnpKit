//
//  RnpCAGradientLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCAGradientLayerChain;
@interface RnpCAGradientLayerChain : RnpBaseLayerChain<RnpCAGradientLayerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpCAGradientLayerChain * (^ colors) (NSArray * colors);
RPCATEGORY_CHAIN_PROPERTY RnpCAGradientLayerChain * (^ locations) (NSArray<NSNumber *> * locations);
RPCATEGORY_CHAIN_PROPERTY RnpCAGradientLayerChain * (^ startPoint) (CGPoint startPoint);
RPCATEGORY_CHAIN_PROPERTY RnpCAGradientLayerChain * (^ endPoint) (CGPoint enRPoint);
@end
RPCreateLayer(CAGradientLayer)
RPCATEGORY_EXINTERFACE(CAGradientLayer, RnpCAGradientLayerChain)
NS_ASSUME_NONNULL_END
