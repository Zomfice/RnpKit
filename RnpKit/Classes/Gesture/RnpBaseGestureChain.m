//
//  RnpBaseGestureChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"
#import <objc/runtime.h>

#define RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, id, UIGestureRecognizer)
#define RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION_VERSION(RPMethod,RPParaType,VETRSION) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION_VERSION(RPMethod,RPParaType, id, UIGestureRecognizer, VETRSION)

@interface UIGestureRecognizer(RNP)

@property (nonatomic, copy) void(^gestureBlock)(id gesture);

- (void)gestureAct:(id)gesture;

@end

@interface RnpBaseGestureChain ()

@property (nonatomic, copy) void(^gestureBlock)(id gesture);

@end
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
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION_VERSION(requiresExclusiveTouchType, BOOL, 9.2)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(allowedTouchTypes, NSArray<NSNumber *> *)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(allowedPressTypes, NSArray<NSNumber *> *)
RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION_VERSION(name, NSString *, 11.0)

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

- (id  _Nonnull (^)(void (^ _Nonnull)(id _Nonnull)))addTargetBlock
{
    return ^(void (^ _Nonnull block)(id _Nonnull)){
        self.gesture.gestureBlock = block;
        [self.gesture addTarget:self.gesture action:@selector(gestureAct:)];
        return self;
    };
}

- (id  _Nonnull (^)(void))removeTargetBlock
{
    return ^{
        self.gesture.gestureBlock = nil;
        [self.gesture removeTarget:self.gesture action:@selector(gestureAct:)];
        return self;
    };
}

@end


@implementation UIGestureRecognizer(RNP)

- (void)gestureAct:(id)gesture{
    if (self.gestureBlock) {
        self.gestureBlock(gesture);
    }
}
- (void)setGestureBlock:(void (^)(id))gestureBlock
{
    objc_setAssociatedObject (self, "gestureBlock", gestureBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}
- (void (^)(id))gestureBlock
{
   return objc_getAssociatedObject(self, "gestureBlock");
}

@end
#undef RPCATEGORY_CHAIN_GESTURE_IMPLEMENTATION
