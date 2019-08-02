//
//  RnpUISwitchChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUISwitchChain;
@interface RnpUISwitchChain : RnpBaseControlChain<RnpUISwitchChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUISwitchChain *(^ on)(BOOL on);
RPCATEGORY_CHAIN_PROPERTY RnpUISwitchChain *(^ onTintColor)(UIColor *onTintColor);
RPCATEGORY_CHAIN_PROPERTY RnpUISwitchChain *(^ thumbTintColor)(UIColor *thumbTintColor);

RPCATEGORY_CHAIN_PROPERTY RnpUISwitchChain *(^ onImage)(UIImage *onImage);
RPCATEGORY_CHAIN_PROPERTY RnpUISwitchChain *(^ offImage)(UIImage *offImage);


@end
RPCreate(UISwitch)
RPCATEGORY_EXINTERFACE(UISwitch, RnpUISwitchChain)
NS_ASSUME_NONNULL_END
