//
//  RnpUIStackViewChain.m
//  Pods
//
//  Created by user on 2022/2/9.
//

#import "RnpUIStackViewChain.h"
#import <objc/runtime.h>

#define RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIStackViewChain *,UIStackView)

@implementation RnpUIStackViewChain
//RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION(axis, UILayoutConstraintAxis);
//RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION(distribution, UIStackViewDistribution);
//RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION(alignment, UIStackViewAlignment);
//RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION(spacing, CGFloat);
//RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION(baselineRelativeArrangement, BOOL);
//RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION(layoutMarginsRelativeArrangement, BOOL);
//
//- (RnpUIStackViewChain * _Nonnull (^)(UIView * _Nonnull))addArrangedSubview{
//    return ^(UIView * _Nonnull view){
//        [(UIStackView *)self.view addArrangedSubview:view];
//        return self;
//    };
//}
//
//- (RnpUIStackViewChain * _Nonnull (^)(NSArray<UIView *> * _Nonnull))addArrangedSubviews
//{
//    return ^(NSArray<UIView *> * _Nonnull views){
//        [views enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            if ([obj isKindOfClass:UIView.class]) {
//                [(UIStackView *)self.view addArrangedSubview:obj];
//            }
//        }];
//        return self;
//    };
//}
//
//- (RnpUIStackViewChain * _Nonnull (^)(UIView * _Nonnull))removeArrangedSubview
//{
//    return ^(UIView * _Nonnull view){
//        [(UIStackView *)self.view removeArrangedSubview:view];
//        return self;
//    };
//}
//
//- (RnpUIStackViewChain * _Nonnull (^)(void))removeAllArrangedSubview{
//    return ^{
//        [[(UIStackView *)self.view arrangedSubviews] enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            [(UIStackView *)self.view removeArrangedSubview:obj];
//        }];
//        return self;
//    };
//}
//
//- (RnpUIStackViewChain * _Nonnull (^)(UIView * _Nonnull, NSUInteger))insertArrangedSubview
//{
//    return ^(UIView * _Nonnull view, NSUInteger index){
//        [(UIStackView *)self.view insertSubview:view atIndex:index];
//        return self;
//    };
//}
//
//- (RnpUIStackViewChain * _Nonnull (^)(CGFloat spacing, UIView * _Nonnull afterView))setCustomSpacing{
//    return ^(CGFloat spacing, UIView * afterView){
//        if (@available(iOS 11.0, *)){
//            [(UIStackView *)self.view setCustomSpacing:spacing afterView:afterView];
//        }
//        return self;
//    };
//}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UIStackView, RnpUIStackViewChain)
#undef RPCATEGORY_CHAIN_STACKVIEW_IMPLEMENTATION
