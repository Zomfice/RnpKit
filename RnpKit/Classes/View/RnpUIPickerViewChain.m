//
//  RnpUIPickerViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUIPickerViewChain.h"

#define RPCATEGORY_CHAIN_PICKER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIPickerViewChain *,UIPickerView)

@implementation RnpUIPickerViewChain

RPCATEGORY_CHAIN_PICKER_IMPLEMENTATION(dataSource, id<UIPickerViewDataSource>)
RPCATEGORY_CHAIN_PICKER_IMPLEMENTATION(delegate, id<UIPickerViewDelegate>)
RPCATEGORY_CHAIN_PICKER_IMPLEMENTATION(showsSelectionIndicator, BOOL)

- (NSInteger (^)(NSInteger))numberOfRowsInComponent{
    return ^ (NSInteger n){
        return [(UIPickerView *)self.view numberOfRowsInComponent:1];
    };
}

- (RnpUIPickerViewChain * _Nonnull (^)(void))reloadAllComponents{
    return ^ (){
        [(UIPickerView *)self.view reloadAllComponents];
        return self;
    };
}

- (CGSize (^)(NSInteger))rowSizeForComponent{
    return ^ (NSInteger n){
        return [(UIPickerView *)self.view rowSizeForComponent:1];
    };
}

- (RnpUIPickerViewChain * _Nonnull (^)(NSInteger))reloadComponent{
    return ^ (NSInteger n){
        [(UIPickerView *)self.view reloadComponent:1];
        return self;
    };
}

- (UIView * _Nonnull (^)(NSInteger, NSInteger))viewForRowComponent{
    return ^ (NSInteger n, NSInteger n1){
        return [(UIPickerView *)self.view viewForRow:n forComponent:n1];
    };
}

- (RnpUIPickerViewChain * _Nonnull (^)(NSInteger, NSInteger, BOOL))selectRowInComponent{
    return ^ (NSInteger a, NSInteger b, BOOL c){
        [(UIPickerView *)self.view selectRow:a inComponent:b animated:c];
        return self;
    };
}

- (NSInteger (^)(NSInteger))selectedRowInComponent{
    return ^ (NSInteger n){
        return [(UIPickerView *)self.view selectedRowInComponent:1];
    };
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UIPickerView, RnpUIPickerViewChain)
#undef RPCATEGORY_CHAIN_PICKER_IMPLEMENTATION
