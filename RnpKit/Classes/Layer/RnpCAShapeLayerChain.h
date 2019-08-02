//
//  RnpCAShapeLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCAShapeLayerChain;
@interface RnpCAShapeLayerChain : RnpBaseLayerChain<RnpCAShapeLayerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ path) (CGPathRef path);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ fillColor) (CGColorRef fillColor);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ fillRule) (CAShapeLayerFillRule fillRule);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ strokeColor) (CGColorRef strokeColor);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ strokeStart) (CGFloat strokeStart);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ strokeEnd) (CGFloat strokeEnd);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ lineWidth) (CGFloat lineWidth);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ miterLimit) (CGFloat miterLimit);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ lineCap) (CAShapeLayerLineCap lineCap);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ lineJoin) (CAShapeLayerLineJoin lineJoin);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ lineDashPhase) (CGFloat lineDashPhase);
RPCATEGORY_CHAIN_PROPERTY RnpCAShapeLayerChain * (^ lineDashPattern) (NSArray<NSNumber *> * lineDashPattern);
@end
RPCreateLayer(CAShapeLayer)
RPCATEGORY_EXINTERFACE(CAShapeLayer, RnpCAShapeLayerChain)
NS_ASSUME_NONNULL_END
