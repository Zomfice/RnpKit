//
//  RnpUILongPressGestureRecognizerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUILongPressGestureRecognizerChain;
@interface RnpUILongPressGestureRecognizerChain : RnpBaseGestureChain<RnpUILongPressGestureRecognizerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUILongPressGestureRecognizerChain * (^ numberOfTapsRequired) (NSUInteger numberOfTapsRequired);

RPCATEGORY_CHAIN_PROPERTY RnpUILongPressGestureRecognizerChain * (^ minimumPressDuration) (NSTimeInterval minimumPressDuration);
RPCATEGORY_CHAIN_PROPERTY RnpUILongPressGestureRecognizerChain * (^ allowableMovement) (CGFloat allowableMovement);
@end
RPCreate(UILongPressGestureRecognizer)
RPCATEGORY_EXINTERFACE(UILongPressGestureRecognizer, RnpUILongPressGestureRecognizerChain)
NS_ASSUME_NONNULL_END
