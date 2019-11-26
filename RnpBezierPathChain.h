//
//  RnpBezierPathChain.h
//  Masonry
//
//  Created by user on 2019/11/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RnpBezierPathChain<__covariant  ObjectType> : NSObject



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
NS_ASSUME_NONNULL_END
