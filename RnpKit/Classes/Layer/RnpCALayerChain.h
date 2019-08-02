//
//  RnpCALayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCALayerChain;
@interface RnpCALayerChain : RnpBaseLayerChain<RnpCALayerChain*>

@end
RPCreateLayer(CALayer)
RPCATEGORY_EXINTERFACE(CALayer, RnpCALayerChain)
NS_ASSUME_NONNULL_END
