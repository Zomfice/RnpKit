//
//  RnpUITableViewCellChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUITableViewCellChain.h"

#define RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUITableViewCellChain *,UITableViewCell)

@implementation RnpUITableViewCellChain

RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(selectionStyle, UITableViewCellSelectionStyle)
RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(accessoryType, UITableViewCellAccessoryType)
RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(separatorInset, UIEdgeInsets)
RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(editing, BOOL)
RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(focusStyle, UITableViewCellFocusStyle)
RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(userInteractionEnabledWhileDragging, BOOL)

- (RnpUITableViewCellChain * _Nonnull (^)(BOOL, BOOL))editingWithAnimated{
    return ^ (BOOL editing, BOOL animated){
        [(UITableViewCell *)self.view setEditing:editing animated:animated];
        return self;
    };
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UITableViewCell, RnpUITableViewCellChain)
#undef RPCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION
