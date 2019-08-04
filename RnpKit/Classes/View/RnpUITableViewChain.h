//
//  RnpUITableViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseScrollViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUITableViewChain;
@interface RnpUITableViewChain : RnpBaseScrollViewChain<RnpUITableViewChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain * (^ delegate) (id <UITableViewDelegate> delegate);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain * (^ dataSource) (id <UITableViewDataSource> dataSource);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain * (^ adJustedContentIOS11)(void);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ rowHeight)(CGFloat rowHeight);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ sectionHeaderHeight)(CGFloat sectionHeaderHeight);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ sectionFooterHeight)(CGFloat sectionFooterHeight);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ estimatedRowHeight)(CGFloat estimatedRowHeight);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ separatorInset)(UIEdgeInsets separatorInset);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ editing)(BOOL editing);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ allowsSelection)(BOOL allowsSelection);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ allowsMultipleSelection)(BOOL allowsMultipleSelection);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ allowsSelectionDuringEditing)(BOOL allowsSelectionDuringEditing);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ allowsMultipleSelectionDuringEditing)(BOOL allowsMultipleSelectionDuringEditing);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ separatorStyle)(UITableViewCellSeparatorStyle separatorStyle);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ separatorColor)(UIColor *separatorColor);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ tableHeaderView)(UIView * tableHeaderView);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ tableFooterView)(UIView * tableFooterView);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ sectionIndexBackgroundColor)(UIColor *sectionIndexBackgroundColor);
RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ sectionIndexColor)(UIColor *sectionIndexColor);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ registerCellClass)(Class cellClass, NSString *identifier);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ registerCellNib)(UINib * nib, NSString *identifier);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ registerViewClass)(Class viewClass, NSString *identifier);

RPCATEGORY_CHAIN_PROPERTY RnpUITableViewChain *(^ registerViewNib)(UINib * viewNib, NSString *identifier);

@end


RPCreateFrame(UITableView)
RPCreate(UITableView)
static inline UITableView * UITableViewCreateWithStyle(UITableViewStyle style){
    return [[UITableView alloc]initWithFrame:CGRectZero style:style];
}
RPCATEGORY_EXINTERFACE(UITableView, RnpUITableViewChain)
NS_ASSUME_NONNULL_END
