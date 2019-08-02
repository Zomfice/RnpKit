//
//  RnpUISwipeGestureRecognizerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpUISwipeGestureRecognizerChain.h"
#define RPCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUISwipeGestureRecognizerChain *, UISwipeGestureRecognizer)
@implementation RnpUISwipeGestureRecognizerChain
RPCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION(numberOfTouchesRequired, NSUInteger)
RPCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION(direction, UISwipeGestureRecognizerDirection)
@end
RPCATEGORY_GESTURE_IMPLEMENTATION(UISwipeGestureRecognizer, RnpUISwipeGestureRecognizerChain)
#undef RPCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION
