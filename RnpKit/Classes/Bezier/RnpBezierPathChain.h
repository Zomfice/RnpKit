//
//  RnpBezierPathChain.h
//  RnpKit
//
//  Created by user on 2019/11/25.
//

#import "RnpChainDefine.h"

NS_ASSUME_NONNULL_BEGIN

@interface RnpBezierPathChain  : NSObject

@property (nonatomic, strong, readonly) __kindof UIBezierPath * bezierPath;

- (instancetype)initWithBezierPath:(UIBezierPath *)bezierPath;

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ moveToPoint)(CGPoint point);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ CGPath)(CGPathRef path);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ addLineToPoint)(CGPoint point);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ addCurveToPoint)(CGPoint endPoint,CGPoint controlPoint1, CGPoint  controlPoint2);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ addQuadCurveToPoint)(CGPoint endPoint,CGPoint controlPoint);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ addArcWithCenter)(CGPoint center,CGFloat radius,CGFloat startAngle,CGFloat endAngle, BOOL clockwise);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ addClip)(void);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ closePath)(void);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ fill)(void);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ stroke)(void);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ removeAllPoints)(void);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ appendPath)(UIBezierPath *);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ applyTransform)(CGAffineTransform);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ lineWidth)(CGFloat);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ lineCapStyle)(CGLineCap);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ lineJoinStyle)(CGLineJoin);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ miterLimit)(CGFloat);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ flatness)(CGFloat);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ usesEvenOddFillRule)(BOOL);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ setLineDash)( const CGFloat  * _Nullable pattern,NSInteger count, CGFloat phase);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ getLineDash)( CGFloat  * _Nullable pattern,NSInteger * _Nullable count, CGFloat * _Nullable phase);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ fillWithBlendMode)(CGBlendMode blendMode,CGFloat alpha);

RPCATEGORY_CHAIN_PROPERTY RnpBezierPathChain * (^ strokeWithBlendMode)(CGBlendMode blendMode,CGFloat alpha);

@end
static inline UIBezierPath * BezierPathNew(){
    return [UIBezierPath bezierPath];
}
static inline UIBezierPath * BezierPathWithRectNew(CGRect rect){
    return [UIBezierPath bezierPathWithRect:rect];
}
static inline UIBezierPath * BezierPathWithOvalInRectNew(CGRect rect){
    return [UIBezierPath bezierPathWithOvalInRect:rect];
}
static inline UIBezierPath * BezierPathWithRoundedRectNew(CGRect rect,CGFloat cornerRadius){
    return [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
}
static inline UIBezierPath * RnpBezierPathWithRoundedRectNew(CGRect rect,UIRectCorner corners,CGSize cornerRadii){
    return [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:cornerRadii];
}
static inline UIBezierPath * BezierPathWithArcCenterNew(CGPoint center,CGFloat radius,CGFloat startAngle,CGFloat endAngle,BOOL clockwise){
    return [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise];
}
static inline UIBezierPath * BezierPathWithCGPathNew(CGPathRef CGPath){
    return [UIBezierPath bezierPathWithCGPath:CGPath];
}

RPCATEGORY_EXINTERFACE(UIBezierPath, RnpBezierPathChain)

NS_ASSUME_NONNULL_END


