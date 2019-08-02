//
//  RnpUIPanGestureRecognizerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpUIPanGestureRecognizerChain.h"
#define RPCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIPanGestureRecognizerChain *, UIPanGestureRecognizer)
@implementation RnpUIPanGestureRecognizerChain
RPCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION(minimumNumberOfTouches, NSUInteger)
RPCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION(maximumNumberOfTouches, NSUInteger)

- (RnpUIPanGestureRecognizerChain * _Nonnull (^)(CGPoint, UIView * _Nonnull))translation{
    return ^ (CGPoint translation, UIView *view){
        [(UIPanGestureRecognizer *)self.gesture setTranslation:translation inView:view];
        return self;
    };
}
@end
RPCATEGORY_GESTURE_IMPLEMENTATION(UIPanGestureRecognizer, RnpUIPanGestureRecognizerChain)
#undef RPCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION
