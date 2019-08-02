//
//  RnpUIRotationGestureRecognizerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpUIRotationGestureRecognizerChain.h"
#define RPCATEGORY_CHAIN_ROTAGESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIRotationGestureRecognizerChain *, UIRotationGestureRecognizer)
@implementation RnpUIRotationGestureRecognizerChain
RPCATEGORY_CHAIN_ROTAGESTURE_IMPLEMENTATION(rotation, CGFloat)
@end
RPCATEGORY_GESTURE_IMPLEMENTATION(UIRotationGestureRecognizer, RnpUIRotationGestureRecognizerChain)
#undef RPCATEGORY_CHAIN_ROTAGESTURE_IMPLEMENTATION
