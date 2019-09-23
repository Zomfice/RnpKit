//
//  RnpUIScrollViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseScrollViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIScrollViewChain;
@interface RnpUIScrollViewChain : RnpBaseScrollViewChain<RnpUIScrollViewChain*>

@end

RPCreateFrame(UIScrollView)
RPCreate(UIScrollView)
RPCATEGORY_EXINTERFACE(UIScrollView, RnpUIScrollViewChain)
NS_ASSUME_NONNULL_END
