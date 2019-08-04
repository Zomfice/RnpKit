//
//  RnpUIActivityIndicatorViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIActivityIndicatorViewChain;
@interface RnpUIActivityIndicatorViewChain : RnpBaseViewChain<RnpUIActivityIndicatorViewChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUIActivityIndicatorViewChain * (^ activityIndicatorViewStyle) (UIActivityIndicatorViewStyle activityIndicatorViewStyle);
RPCATEGORY_CHAIN_PROPERTY RnpUIActivityIndicatorViewChain * (^ hidesWhenStopped) (BOOL hidesWhenStopped);
RPCATEGORY_CHAIN_PROPERTY RnpUIActivityIndicatorViewChain * (^ color) (UIColor * color);
RPCATEGORY_CHAIN_PROPERTY RnpUIActivityIndicatorViewChain * (^ startAnimating) (void);
RPCATEGORY_CHAIN_PROPERTY RnpUIActivityIndicatorViewChain * (^ stopAnimating) (void);

@end

RPCreateFrame(UIActivityIndicatorView)
RPCreate(UIActivityIndicatorView)
RPCATEGORY_EXINTERFACE(UIActivityIndicatorView, RnpUIActivityIndicatorViewChain)
NS_ASSUME_NONNULL_END
