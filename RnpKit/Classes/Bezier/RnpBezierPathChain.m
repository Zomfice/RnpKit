//
//  RnpBezierPathChain.m
//  RnpKit
//
//  Created by user on 2019/11/25.
//

#import "RnpBezierPathChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_BEZIERPATH_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_IMPLEMENTATION(RPMethod,RPParaType, self, RnpBezierPathChain *, UIBezierPath)


@implementation RnpBezierPathChain
@synthesize  bezierPath = _bezierPath;
- (instancetype)initWithBezierPath:(UIBezierPath *)bezierPath
{
    if (self = [super init]) {
        _bezierPath = bezierPath;
    }
    return self;
}

- (RnpBezierPathChain * _Nonnull (^)(CGPoint))moveToPoint
{
    return ^(CGPoint point){
        [self.bezierPath moveToPoint:point];
        return self;
    };
}
- (RnpBezierPathChain * _Nonnull (^)(CGPoint))addLineToPoint
{
    return ^(CGPoint point){
        [self.bezierPath addLineToPoint:point];
        return self;
    };
}
- (RnpBezierPathChain * _Nonnull (^)(CGPoint, CGPoint, CGPoint))addCurveToPoint
{
    return ^(CGPoint point,CGPoint controlPoint1,CGPoint controlPoint2){
        [self.bezierPath addCurveToPoint:point controlPoint1:controlPoint1 controlPoint2:controlPoint2];
        return self;
    };
}

- (RnpBezierPathChain * _Nonnull (^)(CGPoint, CGPoint))addQuadCurveToPoint
{
    return ^(CGPoint point,CGPoint controlPoint){
        [self.bezierPath addQuadCurveToPoint:point controlPoint:controlPoint];
        return self;
    };
}
- (RnpBezierPathChain * _Nonnull (^)(CGPoint, CGFloat, CGFloat, CGFloat, BOOL))addArcWithCenter
{
    return ^(CGPoint center,CGFloat radius,CGFloat startAngle,CGFloat endAngle,BOOL clockwise){
        [self.bezierPath addArcWithCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise];
        return self;
    };
}

- (RnpBezierPathChain * _Nonnull (^)(void))addClip
{
    return ^{
        [self.bezierPath addClip];
        return self;
     };
}

- (RnpBezierPathChain *  _Nonnull (^)(void))closePath
{
    return ^{
        [self.bezierPath closePath];
        return self;
     };
}

- (RnpBezierPathChain *  _Nonnull (^)(void))fill
{
    return ^{
        [self.bezierPath fill];
        return self;
     };
}

- (RnpBezierPathChain *  _Nonnull (^)(void))stroke
{
    return ^{
        [self.bezierPath stroke];
        return self;
     };
}

- (RnpBezierPathChain *  _Nonnull (^)(void))removeAllPoints
{
    return ^{
        [self.bezierPath removeAllPoints];
        return self;
     };
}

- (RnpBezierPathChain *  _Nonnull (^)(CGAffineTransform))applyTransform
{
    return ^(CGAffineTransform transform){
        [self.bezierPath applyTransform:transform];
        return self;
    };
}

- (RnpBezierPathChain *  _Nonnull (^)(UIBezierPath * _Nonnull))appendPath
{
    return ^(UIBezierPath *bezierPath){
        [self.bezierPath appendPath:bezierPath];
        return self;
    };
}
RPCATEGORY_CHAIN_BEZIERPATH_IMPLEMENTATION(lineWidth, CGFloat)
RPCATEGORY_CHAIN_BEZIERPATH_IMPLEMENTATION(lineCapStyle, CGLineCap)
RPCATEGORY_CHAIN_BEZIERPATH_IMPLEMENTATION(lineJoinStyle, CGLineJoin)
RPCATEGORY_CHAIN_BEZIERPATH_IMPLEMENTATION(miterLimit, CGFloat)
RPCATEGORY_CHAIN_BEZIERPATH_IMPLEMENTATION(flatness, CGFloat)
RPCATEGORY_CHAIN_BEZIERPATH_IMPLEMENTATION(usesEvenOddFillRule, BOOL)

- (RnpBezierPathChain *  _Nonnull (^)(const CGFloat * _Nullable, NSInteger, CGFloat))setLineDash
{
    return ^(const CGFloat  * _Nullable pattern,NSInteger count, CGFloat phase){
        [self.bezierPath setLineDash:pattern count:count phase:phase];
        return self;
    };
}

- (RnpBezierPathChain *  _Nonnull (^)(CGFloat * _Nullable, NSInteger * _Nullable, CGFloat * _Nullable))getLineDash
{
    return ^(CGFloat  * _Nullable pattern,NSInteger * _Nullable count, CGFloat * _Nullable phase){
        [self.bezierPath getLineDash:pattern count:count phase:phase];
        return self;
    };
}

- (RnpBezierPathChain *  _Nonnull (^)(CGBlendMode, CGFloat))fillWithBlendMode
{
    return ^(CGBlendMode blendMode,CGFloat alpha){
        [self.bezierPath fillWithBlendMode:blendMode alpha:alpha];
        return self;
    };
}
- (RnpBezierPathChain *  _Nonnull (^)(CGBlendMode, CGFloat))strokeWithBlendMode
{
    return ^(CGBlendMode blendMode,CGFloat alpha){
        [self.bezierPath strokeWithBlendMode:blendMode alpha:alpha];
        return self;
    };
}

@end

@implementation UIBezierPath (EXT)

- (RnpBezierPathChain *)rnp{\
    id __rnp = objc_getAssociatedObject(self, "rnp");
    if(!__rnp){
        __rnp = [[RnpBezierPathChain alloc] initWithBezierPath:self];
        objc_setAssociatedObject (self, "rnp", __rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
    }
    return __rnp;
}
- (void)setRnp:(RnpBezierPathChain *)rnp{
    objc_setAssociatedObject (self, "rnp", rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}

@end
