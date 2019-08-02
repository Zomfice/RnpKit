//
//  RnpUITapGestureRecognizerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUITapGestureRecognizerChain;
@interface RnpUITapGestureRecognizerChain : RnpBaseGestureChain<RnpUITapGestureRecognizerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUITapGestureRecognizerChain * (^ numberOfTapsRequired) (NSUInteger numberOfTapsRequired);
@end
RPCreate(UITapGestureRecognizer)
RPCATEGORY_EXINTERFACE(UITapGestureRecognizer, RnpUITapGestureRecognizerChain)
NS_ASSUME_NONNULL_END
