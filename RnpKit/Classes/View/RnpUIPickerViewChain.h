//
//  RnpUIPickerViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIPickerViewChain;
@interface RnpUIPickerViewChain : RnpBaseViewChain<RnpUIPickerViewChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUIPickerViewChain * (^ dataSource) (id<UIPickerViewDataSource> dataSource);
RPCATEGORY_CHAIN_PROPERTY RnpUIPickerViewChain * (^ delegate) (id<UIPickerViewDelegate> delegate);
RPCATEGORY_CHAIN_PROPERTY RnpUIPickerViewChain * (^ showsSelectionIndicator) (BOOL showsSelectionIndicator);
RPCATEGORY_CHAIN_PROPERTY NSInteger (^ numberOfRowsInComponent) (NSInteger component);
RPCATEGORY_CHAIN_PROPERTY CGSize (^ rowSizeForComponent) (NSInteger component);
RPCATEGORY_CHAIN_PROPERTY UIView * (^ viewForRowComponent) (NSInteger row, NSInteger component);
RPCATEGORY_CHAIN_PROPERTY RnpUIPickerViewChain * (^ reloadAllComponents) (void);
RPCATEGORY_CHAIN_PROPERTY RnpUIPickerViewChain * (^ reloadComponent) (NSInteger component);
RPCATEGORY_CHAIN_PROPERTY RnpUIPickerViewChain * (^ selectRowInComponent) (NSInteger row, NSInteger component, BOOL animated);
RPCATEGORY_CHAIN_PROPERTY NSInteger (^ selectedRowInComponent) (NSInteger component);

@end
RPCreate(UIPickerView)
RPCATEGORY_EXINTERFACE(UIPickerView, RnpUIPickerViewChain)
NS_ASSUME_NONNULL_END
