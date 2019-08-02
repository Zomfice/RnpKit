//
//  RnpCATransformLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCATransformLayerChain;
@interface RnpCATransformLayerChain : RnpBaseLayerChain<RnpCATransformLayerChain*>

@end
RPCreateLayer(CATransformLayer)
RPCATEGORY_EXINTERFACE(CATransformLayer, RnpCATransformLayerChain)
NS_ASSUME_NONNULL_END
