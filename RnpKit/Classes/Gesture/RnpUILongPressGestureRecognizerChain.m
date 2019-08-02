//
//  RnpUILongPressGestureRecognizerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpUILongPressGestureRecognizerChain.h"
#define RPCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUILongPressGestureRecognizerChain *, UILongPressGestureRecognizer)
@implementation RnpUILongPressGestureRecognizerChain
RPCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(numberOfTapsRequired, NSUInteger)
RPCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(minimumPressDuration, NSTimeInterval)
RPCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(allowableMovement, CGFloat)
@end
RPCATEGORY_GESTURE_IMPLEMENTATION(UILongPressGestureRecognizer, RnpUILongPressGestureRecognizerChain)
#undef RPCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION
