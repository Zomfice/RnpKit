//
//  RnpUIViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN

@class RnpUIViewChain,UIView;
@interface RnpUIViewChain : RnpBaseViewChain<RnpUIViewChain *>

@end

RPCreateFrame(UIView)
RPCreate(UIView)
RPCATEGORY_EXINTERFACE(UIView, RnpUIViewChain)

NS_ASSUME_NONNULL_END
