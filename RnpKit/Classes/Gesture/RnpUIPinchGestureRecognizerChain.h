//
//  RnpUIPinchGestureRecognizerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIPinchGestureRecognizerChain;
@interface RnpUIPinchGestureRecognizerChain : RnpBaseGestureChain<RnpUIPinchGestureRecognizerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUIPinchGestureRecognizerChain * (^ scale) (CGFloat scale);
@end
RPCreate(UIPinchGestureRecognizer)
RPCATEGORY_EXINTERFACE(UIPinchGestureRecognizer, RnpUIPinchGestureRecognizerChain)
NS_ASSUME_NONNULL_END
