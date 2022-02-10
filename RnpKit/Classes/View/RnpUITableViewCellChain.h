//
//  RnpUITableViewCellChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUITableViewCellChain;
@interface RnpUITableViewCellChain : RnpBaseViewChain<RnpUITableViewCellChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewCellChain * (^ selectionStyle) (UITableViewCellSelectionStyle selectionStyle);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewCellChain * (^ accessoryType) (UITableViewCellAccessoryType selectionStyle);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewCellChain * (^ separatorInset) (UIEdgeInsets separatorInset);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewCellChain * (^ editing) (BOOL editing);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewCellChain * (^ editingWithAnimated) (BOOL editing, BOOL animated);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewCellChain * (^ focusStyle)(UITableViewCellFocusStyle focusStyle);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewCellChain * (^ userInteractionEnabledWhileDragging)(BOOL userInteractionEnabledWhileDragging) API_AVAILABLE(ios(11.0));

@end


RPCreateFrame(UITableViewCell)
RPCreate(UITableViewCell)
static inline UITableViewCell * UITableViewCellCreateWithStyleAndIndentify(UITableViewCellStyle style, NSString *identifier){
    return [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:identifier];
}
RPCATEGORY_EXINTERFACE(UITableViewCell, RnpUITableViewCellChain)

NS_ASSUME_NONNULL_END
