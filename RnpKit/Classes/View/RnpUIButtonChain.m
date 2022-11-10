//
//  RnpUIButtonChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUIButtonChain.h"
#import <objc/runtime.h>

#define RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIButtonChain *,UIButton)

#define RPCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(RPMethod,RPParaType)\
- (RnpUIButtonChain * (^)(RPParaType RPMethod))RPMethod    \
{   \
return ^ (RPParaType RPMethod) {    \
((UIButton *)self.view).titleLabel.RPMethod = RPMethod;   \
return self;    \
};\
}

@interface UIButton (RNP)
@property (nonatomic, copy) void (^clickBlock)(id);
- (void)clickAct:(id)btn;
@end

@implementation RnpUIButtonChain

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(contentEdgeInsets, UIEdgeInsets)

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(titleEdgeInsets, UIEdgeInsets)

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(imageEdgeInsets, UIEdgeInsets)

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(adjustsImageWhenHighlighted, BOOL)

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(showsTouchWhenHighlighted, BOOL)

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(adjustsImageWhenDisabled, BOOL)

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(reversesTitleShadowWhenHighlighted, BOOL)

RPCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(textAlignment, NSTextAlignment)

RPCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(numberOfLines, NSInteger)

RPCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(lineBreakMode, NSLineBreakMode)

RPCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL)

RPCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(baselineAdjustment, UIBaselineAdjustment)

RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(semanticContentAttribute, UISemanticContentAttribute)

- (RnpUIButtonChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState))image{
    return ^ (UIImage *image, UIControlState state){
        [(UIButton *)self.view setImage:image forState:state];
        return self;
    };
}

- (RnpUIButtonChain * _Nonnull (^)(NSString * _Nonnull, UIControlState))text{
    return ^ (NSString *text, UIControlState state){
        [(UIButton *)self.view setTitle:text forState:state];
        return self;
    };
}

- (RnpUIButtonChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState))backgroundImage{
    return ^ (UIImage *image, UIControlState state){
        [(UIButton *)self.view setBackgroundImage:image forState:state];
        return self;
    };
}

- (RnpUIButtonChain * _Nonnull (^)(NSAttributedString * _Nonnull, UIControlState))attributedTitle{
    return ^ (NSAttributedString *title, UIControlState state){
        [(UIButton *)self.view setAttributedTitle:title forState:state];
        return self;
    };
}

- (RnpUIButtonChain * _Nonnull (^)(UIFont * _Nonnull))font{
    return ^ (UIFont *font){
        [(UIButton *)self.view titleLabel].font = font;
        return self;
    };
}

- (RnpUIButtonChain * _Nonnull (^)(UIColor * _Nonnull, UIControlState))textColor{
    return ^ (UIColor *color, UIControlState state){
        [(UIButton *)self.view setTitleColor:color forState:state];
        return self;
    };
}

- (RnpUIButtonChain * _Nonnull (^)(UIColor * _Nonnull, UIControlState))titleShadow{
    return ^ (UIColor *color, UIControlState state){
        [(UIButton *)self.view setTitleShadowColor:color forState:state];
        return self;
    };
}

- (RnpUIButtonChain * _Nonnull (^)(void (^ _Nonnull)(id _Nonnull)))addClickBlock
{
    return ^(void (^ _Nonnull block)(id _Nonnull)){
        UIButton * btn = self.view;
        btn.clickBlock = block;
        [btn addTarget:btn action:@selector(clickAct:) forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}
- (RnpUIButtonChain * _Nonnull (^)(void))removeClickBlock
{
    return ^{
        UIButton * btn = self.view;
        btn.clickBlock = nil;
        [btn removeTarget:btn action:@selector(clickAct:) forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

@end

RPCATEGORY_VIEW_IMPLEMENTATION(UIButton, RnpUIButtonChain)
#undef RPCATEGORY_CHAIN_BUTTON_IMPLEMENTATION
#undef RPCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION

@implementation UIButton(RNP)

- (void)clickAct:(id)btn{
    if (self.clickBlock) {
        self.clickBlock(btn);
    }
}
- (void)setClickBlock:(void (^)(id))clickBlock
{
    objc_setAssociatedObject (self, "clickBlock", clickBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}
- (void (^)(id))clickBlock
{
   return objc_getAssociatedObject(self, "clickBlock");
}

@end
