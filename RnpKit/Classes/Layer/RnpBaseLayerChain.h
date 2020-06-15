//
//  RnpBaseLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpChainDefine.h"
#import <objc/runtime.h>

#define RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, RPModelType, RPPropertyClass) RPCATEGORY_CHAIN_IMPLEMENTATION(RPMethod,RPParaType, layer, RPModelType, RPPropertyClass)

#define RPCATEGORY_LAYER_IMPLEMENTATION(RPClass, modelType)\
@implementation RPClass (EXT)\
- (modelType *)rnp{\
id __rnp = objc_getAssociatedObject(self, "rnp"); \
if(!__rnp){\
__rnp = [[modelType alloc] initWithLayer:self];\
objc_setAssociatedObject (self, "rnp", __rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );\
}\
return __rnp;\
}\
- (void)setRnp:(modelType *)rnp{\
objc_setAssociatedObject (self, "rnp", rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );\
} \
@end

NS_ASSUME_NONNULL_BEGIN
typedef void(^RPAssignLayerLoad)(__kindof CALayer *layer);
@interface RnpBaseLayerChain <__covariant  ObjectType> : NSObject
- (instancetype)initWithLayer:(CALayer *)layer;

@property (nonatomic, weak, readonly) __kindof CALayer * layer;

@property (nonatomic, assign, readonly) Class  layerClass;

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addSubLayer) (CALayer layer);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ bounds) (CGRect bounds);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ position) (CGPoint position);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ zPosition) (CGFloat zPosition);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ anchorPoint) (CGPoint anchorPoint);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ anchorPointZ) (CGFloat anchorPointZ);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ transform) (CATransform3D transform);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ affineTransform) (CGAffineTransform affineTransform);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ frame) (CGRect frame);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ hidden) (BOOL hidden);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ doubleSided) (BOOL doubleSided);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ geometryFlipped) (BOOL geometryFlipped);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeFromSuperlayer) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addToSuperLayer) (CALayer * layer);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSublayerBelow) (CALayer *layer, CALayer * below);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSublayerIndex) (CALayer *layer, NSInteger index);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSublayerAbove) (CALayer *layer, CALayer *above);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ relpaceSublayer) (CALayer *oldLayer, CALayer *newLayer);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ setToMask) (CALayer * toLayer);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ mask) (CALayer * maskLayer);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ masksToBounds) (BOOL masksToBounds);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contents) (id contents);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsRect) (CGRect contentsRect);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsGravity) (CALayerContentsGravity contentsGravity);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsScale) (CGFloat contentsScale);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsCenter) (CGRect contentsCenter);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsFormat) (CALayerContentsFormat contentsFormat);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ minificationFilter) (CALayerContentsFilter minificationFilter);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ magnificationFilter) (CALayerContentsFilter magnificationFilter);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ minificationFilterBias) (float minificationFilterBias);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ opaque) (BOOL opaque);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ needsDisplayOnBoundsChange) (BOOL needsDisplayOnBoundsChange);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ drawsAsynchronously) (BOOL drawsAsynchronously);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ edgeAntialiasingMask) (CAEdgeAntialiasingMask edgeAntialiasingMask);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ allowsEdgeAntialiasing) (BOOL allowsEdgeAntialiasing);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ backgroundColor) (CGColorRef backgroundColor);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ cornerRadius) (CGFloat cornerRadius);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ maskedCorners) (CACornerMask maskedCorners);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ borderWidth) (CGFloat borderWidth);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ borderColor) (CGColorRef borderColor);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ opacity) (float opacity);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ allowsGroupOpacity) (BOOL allowsGroupOpacity);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ compositingFilter) (id compositingFilter);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ filters) (NSArray* filters);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ backgroundFilters) (NSArray* backgroundFilters);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shouldRasterize) (BOOL shouldRasterize);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ rasterizationScale) (CGFloat rasterizationScale);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowColor) (CGColorRef shadowColor);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOpacity) (float shadowOpacity);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOffset) (CGSize shadowOffset);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowRadius) (CGFloat shadowRadius);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowPath) (CGPathRef shadowPath);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ actions) (NSDictionary<NSString *, id<CAAction>> * actions);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addAnimation) (CAAnimation *animation, NSString *key);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeAnimation) (NSString * key);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeAllAnimation) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ name) (NSString * name);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ delegate) (id <CALayerDelegate> delegate);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ style) (NSDictionary * style);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ assignTo) (RPAssignLayerLoad assignTo);
@end

NS_ASSUME_NONNULL_END
