//
//  RnpUIRotationGestureRecognizerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIRotationGestureRecognizerChain;
@interface RnpUIRotationGestureRecognizerChain : RnpBaseGestureChain<RnpUIRotationGestureRecognizerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUIRotationGestureRecognizerChain * (^ rotation) (CGFloat rotation);
@end
RPCreate(UIRotationGestureRecognizer)
RPCATEGORY_EXINTERFACE(UIRotationGestureRecognizer, RnpUIRotationGestureRecognizerChain)
NS_ASSUME_NONNULL_END
