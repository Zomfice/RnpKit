//
//  RnpUIPinchGestureRecognizerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpUIPinchGestureRecognizerChain.h"
#define RPCATEGORY_CHAIN_PINGESTURE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIPinchGestureRecognizerChain *, UIPinchGestureRecognizer)
@implementation RnpUIPinchGestureRecognizerChain
RPCATEGORY_CHAIN_PINGESTURE_IMPLEMENTATION(scale, CGFloat)
@end
RPCATEGORY_GESTURE_IMPLEMENTATION(UIPinchGestureRecognizer, RnpUIPinchGestureRecognizerChain)
#undef RPCATEGORY_CHAIN_PINGESTURE_IMPLEMENTATION
