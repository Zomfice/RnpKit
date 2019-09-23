//
//  RnpUITableViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUITableViewChain.h"
#define RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUITableViewChain *,UITableView)

@implementation RnpUITableViewChain
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(delegate, id<UITableViewDelegate>)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(dataSource, id<UITableViewDataSource>)
- (RnpUITableViewChain * _Nonnull (^)(void))adJustedContentIOS11{
    return ^ (){
        if (@available(iOS 11.0, *)) {
            [(UIScrollView *)self.view setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
        }
        return self;
    };
}

RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(rowHeight, CGFloat)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionHeaderHeight, CGFloat)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionFooterHeight, CGFloat)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedRowHeight, CGFloat)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedSectionHeaderHeight, CGFloat)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedSectionFooterHeight, CGFloat)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorInset, UIEdgeInsets)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(editing, BOOL)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsSelection, BOOL)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsMultipleSelection, BOOL)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsSelectionDuringEditing, BOOL)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsMultipleSelectionDuringEditing, BOOL)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorStyle, UITableViewCellSeparatorStyle)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorColor, UIColor *)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(tableHeaderView, UIView *)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(tableFooterView, UIView *)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionIndexBackgroundColor, UIColor *)
RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionIndexColor, UIColor *)

- (RnpUITableViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerCellNib{
    return ^ (UINib *nib, NSString *identifier){
        [(UITableView *)self.view registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}

- (RnpUITableViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerViewNib{
    return ^ (UINib *nib, NSString *identifier){
        [(UITableView *)self.view registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

- (RnpUITableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerCellClass{
    return ^ (Class class, NSString *identifier){
        [(UITableView *)self.view registerClass:class forCellReuseIdentifier:identifier];
        return self;
    };
}

- (RnpUITableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerViewClass{
    return ^ (Class class, NSString *identifier){
        [(UITableView *)self.view registerClass:class forHeaderFooterViewReuseIdentifier:identifier];
        
        return self;
    };
}





// Cell注册
- (RnpUITableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))registerNib{
    return ^ (Class class){
        [(UITableView *)self.view registerNib:[UINib nibWithNibName:NSStringFromClass(class) bundle:nil] forCellReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}

- (RnpUITableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))registerClass{
    return ^ (Class class){
        [(UITableView *)self.view registerClass:class forCellReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}

- (RnpUITableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))registerNibForHeaderFooterView{
    return ^ (Class class){
        [(UITableView *)self.view registerNib:[UINib nibWithNibName:NSStringFromClass(class) bundle:nil] forHeaderFooterViewReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}

- (RnpUITableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))registerClassForHeaderFooterView{
    return ^ (Class class){
        [(UITableView *)self.view registerClass:class forHeaderFooterViewReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}


// Cell复用
- (__kindof UITableViewCell * _Nullable (^)(Class  _Nonnull __unsafe_unretained))dequeueReusableCellWithClass{
    return ^ (Class class){
        return [(UITableView *)self.view dequeueReusableCellWithIdentifier:NSStringFromClass(class)];
    };
}

- (__kindof UITableViewCell * _Nullable (^)(Class  _Nonnull __unsafe_unretained, NSIndexPath * _Nonnull))dequeueReusableCell{
    return ^ (Class class, NSIndexPath * indexPath){
        return [(UITableView *)self.view dequeueReusableCellWithIdentifier:NSStringFromClass(class) forIndexPath:indexPath];
    };
}

- (__kindof UITableViewHeaderFooterView * _Nullable (^)(Class  _Nonnull __unsafe_unretained))dequeueReusableHeaderFooterViewWithIdentifier{
    return ^ (Class class){
        return [(UITableView *)self.view dequeueReusableHeaderFooterViewWithIdentifier:NSStringFromClass(class)];
    };
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UITableView, RnpUITableViewChain)
#undef RPCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION
