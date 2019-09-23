//
//  UIBezierPath+bezier.m
//  RnpKit
//
//  Created by user on 2019/8/2.
//

#import "UIBezierPath+bezier.h"


#define BEZIERPATH_RPCATEGORY_CHAIN_IMPLEMENTATION(RPMethod,RPParaType)\
- (UIBezierPath *  _Nonnull (^)(RPParaType))RPMethod{\
return ^ (RPParaType RPMethod){\
    self.RPMethod = RPMethod;\
return self;\
};\
}

@implementation UIBezierPath (bezier)

BEZIERPATH_RPCATEGORY_CHAIN_IMPLEMENTATION(CGPath,CGPathRef);



- (UIBezierPath * _Nonnull (^)(CGPoint))moveToPoint
{
    return ^(CGPoint point){
        [self moveToPoint:point];
        return self;
    };
}


@end


