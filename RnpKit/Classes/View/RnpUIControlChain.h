//
//  RnpUIControlChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIControlChain;
@interface RnpUIControlChain : RnpBaseControlChain<RnpUIControlChain*>

@end
RPCreate(UIControl)
RPCATEGORY_EXINTERFACE(UIControl, RnpUIControlChain)
NS_ASSUME_NONNULL_END
