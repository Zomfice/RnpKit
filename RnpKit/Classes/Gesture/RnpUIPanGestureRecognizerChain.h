//
//  RnpUIPanGestureRecognizerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIPanGestureRecognizerChain;
@interface RnpUIPanGestureRecognizerChain : RnpBaseGestureChain<RnpUIPanGestureRecognizerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUIPanGestureRecognizerChain * (^ minimumNumberOfTouches) (NSUInteger minimumNumberOfTouches);
RPCATEGORY_CHAIN_PROPERTY RnpUIPanGestureRecognizerChain * (^ maximumNumberOfTouches) (NSUInteger maximumNumberOfTouches);
RPCATEGORY_CHAIN_PROPERTY RnpUIPanGestureRecognizerChain * (^ translation) (CGPoint translation,UIView *view);
@end
RPCreate(UIPanGestureRecognizer)
RPCATEGORY_EXINTERFACE(UIPanGestureRecognizer, RnpUIPanGestureRecognizerChain)
NS_ASSUME_NONNULL_END
