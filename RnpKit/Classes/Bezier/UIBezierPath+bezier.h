//
//  UIBezierPath+bezier.h
//  RnpKit
//
//  Created by user on 2019/8/2.
//

#import <UIKit/UIKit.h>
#import "RnpChainDefine.h"



NS_ASSUME_NONNULL_BEGIN

@interface UIBezierPath (bezier)


RPCATEGORY_CHAIN_PROPERTY UIBezierPath* (^ moveToPoint)(CGPoint point);

RPCATEGORY_CHAIN_PROPERTY UIBezierPath* (^ CGPath)(CGPathRef path);




@end


static inline UIBezierPath * bezierPath(){
    return [UIBezierPath bezierPath];
}

static inline UIBezierPath * bezierPathWithRect(CGRect rect){
    return [UIBezierPath bezierPathWithRect:rect];
}

static inline UIBezierPath * bezierPathWithOvalInRect(CGRect rect){
    return [UIBezierPath bezierPathWithOvalInRect:rect];
}

static inline UIBezierPath * bezierPathWithRoundedRect(CGRect rect,CGFloat cornerRadius){
    return [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
}

static inline UIBezierPath * RnpBezierPathWithRoundedRect(CGRect rect,UIRectCorner corners,CGSize cornerRadii){
    return [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:cornerRadii];
}

static inline UIBezierPath * bezierPathWithArcCenter(CGPoint center,CGFloat radius,CGFloat startAngle,CGFloat endAngle,BOOL clockwise){
    return [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise];
}

static inline UIBezierPath * bezierPathWithCGPath(CGPathRef CGPath){
    return [UIBezierPath bezierPathWithCGPath:CGPath];
}
NS_ASSUME_NONNULL_END
