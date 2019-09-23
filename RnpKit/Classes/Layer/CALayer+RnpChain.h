//
//  CALayer+RnpChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import <QuartzCore/QuartzCore.h>
#import "RnpKitLayer.h"
NS_ASSUME_NONNULL_BEGIN

@interface CALayer (RnpChain)

RPCATEGORY_STRONG_PROPERTY RnpCALayerChain *(^ addLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCAShapeLayerChain *(^ addShaperLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCAEmitterLayerChain *(^ addEmiiterLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCAScrollLayerChain *(^ addScrollLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCATextLayerChain *(^ addTextLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCATiledLayerChain *(^ addTiledLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCATransformLayerChain *(^ addTransFormLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCAGradientLayerChain *(^ addGradientLayer)(void);

RPCATEGORY_STRONG_PROPERTY RnpCAReplicatorLayerChain *(^ addReplicatorLayer)(void);

@end

NS_ASSUME_NONNULL_END
