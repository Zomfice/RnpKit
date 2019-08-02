//
//  RnpCAScrollLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCAScrollLayerChain;
@interface RnpCAScrollLayerChain : RnpBaseLayerChain
RPCATEGORY_CHAIN_PROPERTY RnpCAScrollLayerChain * (^ scrollToPoint) (CGPoint point);
RPCATEGORY_CHAIN_PROPERTY RnpCAScrollLayerChain * (^ scrollToRect) (CGRect rect);
RPCATEGORY_CHAIN_PROPERTY RnpCAScrollLayerChain * (^ scrollMode) (CAScrollLayerScrollMode scrollMode);
@end
RPCreateLayer(CAScrollLayer)
RPCATEGORY_EXINTERFACE(CAScrollLayer, RnpCAScrollLayerChain)
NS_ASSUME_NONNULL_END
