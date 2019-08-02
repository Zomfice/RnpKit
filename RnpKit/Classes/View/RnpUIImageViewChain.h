//
//  RnpUIImageViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIImageViewChain;
@interface RnpUIImageViewChain : RnpBaseViewChain<RnpUIImageViewChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ image)(UIImage *image);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ highlightedImage)(UIImage *highlightedImage);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ highlighted)(BOOL highlighted);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ animationImages)(NSArray <UIImage *> * animationImages);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ highlightedAnimationImages)(NSArray <UIImage *> * highlightedAnimationImages);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ startAnimating)(void);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ stopAnimating)(void);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ animationRepeatCount)(NSInteger animationRepeatCount);

RPCATEGORY_CHAIN_PROPERTY RnpUIImageViewChain *(^ animationDuration)(NSTimeInterval animationDuration);

@end
RPCreate(UIImageView)
RPCATEGORY_EXINTERFACE(UIImageView, RnpUIImageViewChain)
NS_ASSUME_NONNULL_END
