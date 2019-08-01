//
//  RnpBaseControlChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"
#define RPCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, id ,UIControl)

@implementation RnpBaseControlChain

RPCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(enabled, BOOL)
RPCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(selected, BOOL)
RPCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(highlighted, BOOL)
RPCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(contentVerticalAlignment, UIControlContentVerticalAlignment)
RPCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(contentHorizontalAlignment, UIControlContentHorizontalAlignment)

- (id  _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))addTarget{
    return ^ (id target, SEL action, UIControlEvents events){
        [(UIControl *)(self.view) addTarget:target action:action forControlEvents:events];
        return self;
    };
}

- ( id  _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))removeTarget{
    return ^ (id target, SEL action, UIControlEvents events){
        [(UIControl *)(self.view) removeTarget:target action:action forControlEvents:events];
        return self;
    };
}
@end
#undef RPCATEGORY_CHAIN_CONTROL_IMPLEMENTATION
