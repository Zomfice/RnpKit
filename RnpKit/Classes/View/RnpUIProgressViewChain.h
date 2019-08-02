//
//  RnpUIProgressViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIProgressViewChain;
@interface RnpUIProgressViewChain : RnpBaseViewChain<RnpUIProgressViewChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ progressViewStyle) (UIProgressViewStyle progressViewStyle);
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ progress) (float progress);
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ progressTintColor) (UIColor* progressTintColor);
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ trackTintColor) (UIColor* trackTintColor);
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ progressImage) (UIImage* progressImage);
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ trackImage) (UIImage* trackImage);
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ observedProgress) (NSProgress * observeRProgress);
RPCATEGORY_CHAIN_PROPERTY RnpUIProgressViewChain * (^ setProgressAnimated) (float progress, BOOL animated);
@end
RPCreate(UIProgressView)
RPCATEGORY_EXINTERFACE(UIProgressView, RnpUIProgressViewChain)
NS_ASSUME_NONNULL_END

