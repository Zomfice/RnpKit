//
//  RnpBaseLayerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

#define RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(RPMethod,RPParaType, id, CALayer)

@implementation RnpBaseLayerChain
- (instancetype)initWithLayer:(CALayer *)layer{
    if (self = [super init]) {
        _layer = layer;
        _layerClass = [layer class];
    }
    return self;
}

RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(bounds, CGRect)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(frame, CGRect)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(position, CGPoint)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(anchorPoint, CGPoint)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(zPosition, CGFloat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(anchorPointZ, CGFloat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(rasterizationScale, CGFloat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(transform, CATransform3D)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(affineTransform, CGAffineTransform)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(hidden, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(doubleSided, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(geometryFlipped, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(masksToBounds, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(mask, CALayer *)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contents, id)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsRect, CGRect)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsGravity, CALayerContentsGravity)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsScale, CGFloat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsCenter, CGRect)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsFormat, CALayerContentsFormat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(minificationFilter, CALayerContentsFilter)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(magnificationFilter, CALayerContentsFilter)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(minificationFilterBias, float)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(opaque, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(needsDisplayOnBoundsChange, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(drawsAsynchronously, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(edgeAntialiasingMask, CAEdgeAntialiasingMask)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(allowsEdgeAntialiasing, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(backgroundColor, CGColorRef)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(cornerRadius, CGFloat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(maskedCorners, CACornerMask)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(borderWidth, CGFloat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(borderColor, CGColorRef)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(opacity, float)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(allowsGroupOpacity, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(compositingFilter, id)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(filters, NSArray*)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(backgroundFilters, NSArray*)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shouldRasterize, BOOL)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowColor, CGColorRef)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowOpacity, float)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowOffset, CGSize)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowRadius, CGFloat)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowPath, CGPathRef)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(name, NSString *)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(delegate, id <CALayerDelegate>)
RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(style, NSDictionary *)

- (id  _Nonnull (^)(CALayer *))addSubLayer{
    return ^(CALayer * layer){
        if (layer == nil) {
            return self;
        }
        [self.layer addSublayer:layer];
        return self;
    };
}

- (id  _Nonnull (^)( NSDictionary<NSString *,id<CAAction>>  * _Nonnull))actions{
    return ^ (NSDictionary<NSString *,id<CAAction>> * dic){
        self.layer.actions = dic;
        return self;
    };
}

- (id  _Nonnull (^)(void))removeFromSuperlayer{
    return ^(){
        [self.layer removeFromSuperlayer];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull))addToSuperLayer{
    return ^ (CALayer *layer){
        [layer addSublayer:self.layer];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, CALayer * _Nonnull))insertSublayerBelow{
    return ^ (CALayer *layer, CALayer *belowLayer){
        [self.layer insertSublayer:layer below:belowLayer];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, CALayer * _Nonnull))insertSublayerAbove{
    return ^ (CALayer *layer, CALayer *above){
        [self.layer insertSublayer:layer above:above];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, NSInteger))insertSublayerIndex{
    return ^ (CALayer *layer, NSInteger index){
        [self.layer insertSublayer:layer atIndex:(unsigned)index];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, CALayer * _Nonnull))relpaceSublayer{
    return ^ (CALayer *oldLayer, CALayer *newLayer){
        [self.layer replaceSublayer:oldLayer with:newLayer];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull))setToMask{
    return ^ (CALayer *layer){
        layer.mask = self.layer;
        return self;
    };
}

- (id  _Nonnull (^)(CAAnimation * _Nonnull, NSString * _Nonnull))addAnimation{
    return ^ (CAAnimation *ani, NSString *key){
        if (ani && key) {
            [self.layer addAnimation:ani forKey:key];
        }
        return self;
    };
}

- (id  _Nonnull (^)(NSString * _Nonnull))removeAnimation{
    return ^ (NSString *key){
        if (key) {
            [self.layer removeAnimationForKey:key];
        }
        return self;
    };
}

- (id  _Nonnull (^)(void))removeAllAnimation{
    return ^ (){
        [self.layer removeAllAnimations];
        return self;
    };
}

- (id  _Nonnull (^)(RPAssignLayerLoad _Nonnull))assignTo{
    return ^ (void (^assignTo)(id layer)){
        if (assignTo) {
            assignTo(self);
        }
        return self;
    };
}
@end
#undef RPCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION
