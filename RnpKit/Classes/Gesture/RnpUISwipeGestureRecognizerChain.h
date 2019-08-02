//
//  RnpUISwipeGestureRecognizerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUISwipeGestureRecognizerChain;
@interface RnpUISwipeGestureRecognizerChain : RnpBaseGestureChain<RnpUISwipeGestureRecognizerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUISwipeGestureRecognizerChain * (^ numberOfTapsRequired) (NSUInteger numberOfTapsRequired);
RPCATEGORY_CHAIN_PROPERTY RnpUISwipeGestureRecognizerChain * (^ direction) (UISwipeGestureRecognizerDirection direction);
@end
RPCreate(UISwipeGestureRecognizer)
RPCATEGORY_EXINTERFACE(UISwipeGestureRecognizer, RnpUISwipeGestureRecognizerChain)
NS_ASSUME_NONNULL_END
