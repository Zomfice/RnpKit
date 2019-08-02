//
//  RnpBaseGestureChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"

#define RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, id, UIGestureRecognizer)

@implementation RnpBaseGestureChain

- (instancetype)initWithGesture:(UIGestureRecognizer *)gesture{
    if (self = [super init]) {
        _gesture = gesture;
        _gestureClass = [gesture class];
    }
    return self;
}

RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(delegate, id<UIGestureRecognizerDelegate>)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(enabled, BOOL)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(cancelsTouchesInView, BOOL)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(delaysTouchesBegan, BOOL)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(delaysTouchesEnded, BOOL)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(requiresExclusiveTouchType, BOOL)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(allowedTouchTypes, NSArray<NSNumber *> *)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(allowedPressTypes, NSArray<NSNumber *> *)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(name, NSString *)

- (id  _Nonnull (^)(UIGestureRecognizer * _Nonnull))requireGestureRecognizerToFail{
    return ^ (UIGestureRecognizer *gesture){
        if (gesture) {
            [self.gesture requireGestureRecognizerToFail:gesture];
        }
        return self;
    };
}

- (id  _Nonnull (^)(id _Nonnull, SEL _Nonnull))addTarget{
    return ^ (id target, SEL action){
        if (target && action) {
            [self.gesture addTarget:target action:action];
        }
        return self;
    };
}

- (id  _Nonnull (^)(id _Nonnull, SEL _Nonnull))removeTarget{
    return ^ (id target, SEL action){
        if (target) {
            [self.gesture removeTarget:target action:action];
        }
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull))addToSuperView{
    return ^ (UIView *superView){
        if (superView) {
            [superView addGestureRecognizer:self.gesture];
        }
        return self;
    };
}

@end
#undef RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION
