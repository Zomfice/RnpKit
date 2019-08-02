//
//  RnpCAShapeLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpCAShapeLayerChain.h"
#define RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpCAShapeLayerChain *, CAShapeLayer)

@implementation RnpCAShapeLayerChain

RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(path, CGPathRef)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(fillColor, CGColorRef)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(fillRule, CAShapeLayerFillRule)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(strokeColor, CGColorRef)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(strokeStart, CGFloat)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(strokeEnd, CGFloat)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(lineWidth, CGFloat)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(miterLimit, CGFloat)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(lineCap, CAShapeLayerLineCap)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(lineJoin, CAShapeLayerLineJoin)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(lineDashPhase, CGFloat)
RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION(lineDashPattern, NSArray<NSNumber *> *)

@end
RPCATEGORY_LAYER_IMPLEMENTATION(CAShapeLayer, RnpCAShapeLayerChain)
#undef RPCATEGORY_CHAIN_SHAPERLAYER_IMPLEMENTATION
