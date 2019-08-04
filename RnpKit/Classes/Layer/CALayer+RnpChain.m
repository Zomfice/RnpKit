//
//  CALayer+RnpChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "CALayer+RnpChain.h"

#define RPCATEGORY_ADDSUBLAYER(method, modelClass, LayerClass)\
- (modelClass * _Nonnull (^)(void))method{\
return ^ (){\
LayerClass *layer = [LayerClass layer];\
modelClass *chainModel = [[modelClass alloc] initWithLayer:layer];\
[self addSublayer:layer];\
return chainModel;\
};\
}

@implementation CALayer (RnpChain)

RPCATEGORY_ADDSUBLAYER(addLayer, RnpCALayerChain, CALayer)
RPCATEGORY_ADDSUBLAYER(addShaperLayer, RnpCAShapeLayerChain, CAShapeLayer)
RPCATEGORY_ADDSUBLAYER(addEmiiterLayer, RnpCAEmitterLayerChain, CAEmitterLayer)
RPCATEGORY_ADDSUBLAYER(addScrollLayer, RnpCAScrollLayerChain, CAScrollLayer)
RPCATEGORY_ADDSUBLAYER(addTextLayer, RnpCATextLayerChain, CATextLayer)
RPCATEGORY_ADDSUBLAYER(addTiledLayer, RnpCATiledLayerChain, CATiledLayer)
RPCATEGORY_ADDSUBLAYER(addTransFormLayer, RnpCATransformLayerChain, CATransformLayer)
RPCATEGORY_ADDSUBLAYER(addGradientLayer, RnpCAGradientLayerChain, CAGradientLayer)
RPCATEGORY_ADDSUBLAYER(addReplicatorLayer, RnpCAReplicatorLayerChain, CAReplicatorLayer)

@end
