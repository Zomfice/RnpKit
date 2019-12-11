//
//  RnpBaseGestureChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpChainDefine.h"

#define RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, RPModelType, RPPropertyClass) RPCATEGORY_CHAIN_IMPLEMENTATION(RPMethod,RPParaType, gesture, RPModelType, RPPropertyClass)

#define RPCATEGORY_GESTURE_IMPLEMENTATION(RPClass, modelType)\
@implementation RPClass (EXT)\
- (modelType *)rnp{\
return [[modelType alloc] initWithGesture:self];\
}\
@end
NS_ASSUME_NONNULL_BEGIN

@interface RnpBaseGestureChain <__covariant  ObjectType> : NSObject

- (instancetype)initWithGesture:(UIGestureRecognizer *)gesture;

@property (nonatomic, strong, readonly) UIGestureRecognizer * gesture;

@property (nonatomic, assign, readonly) Class  gestureClass;

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ delegate) (id<UIGestureRecognizerDelegate> delegate);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ enabled) (BOOL enabled);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ cancelsTouchesInView) (BOOL cancelsTouchesInView);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ delaysTouchesBegan) (BOOL delaysTouchesBegan);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ delaysTouchesEnded) (BOOL delaysTouchesEnded);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ allowedTouchTypes) (NSArray<NSNumber *> *allowedTouchTypes);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ allowedPressTypes) (NSArray<NSNumber *> *alloweRPressTypes);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ requiresExclusiveTouchType) (BOOL requiresExclusiveTouchType);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ name) (NSString * name);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ requireGestureRecognizerToFail) (UIGestureRecognizer * requireGestureRecognizerToFail);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addTarget) (id target, SEL action);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeTarget) (id target, SEL action);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addTargetBlock) (void (^) (id gesture));

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeTargetBlock)(void);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addToSuperView) (UIView *view);


@end

NS_ASSUME_NONNULL_END
