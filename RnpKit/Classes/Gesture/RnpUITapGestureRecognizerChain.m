//
//  RnpUITapGestureRecognizerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpUITapGestureRecognizerChain.h"
#define RPCATEGORY_CHAIN_TAPGESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUITapGestureRecognizerChain *, UITapGestureRecognizer)
@implementation RnpUITapGestureRecognizerChain
RPCATEGORY_CHAIN_TAPGESTURE_IMPLEMENTATION(numberOfTapsRequired,NSUInteger)
@end
RPCATEGORY_GESTURE_IMPLEMENTATION(UITapGestureRecognizer, RnpUITapGestureRecognizerChain)
#undef RPCATEGORY_CHAIN_TAPGESTURE_IMPLEMENTATION
