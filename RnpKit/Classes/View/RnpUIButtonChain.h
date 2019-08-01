//
//  RnpUIButtonChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"
NS_ASSUME_NONNULL_BEGIN
@class RnpUIButtonChain;
@interface RnpUIButtonChain : RnpBaseControlChain<RnpUIButtonChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ contentEdgeInsets)(UIEdgeInsets contentEdgeInsets);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ titleEdgeInsets)(UIEdgeInsets titleEdgeInsets);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ imageEdgeInsets)(UIEdgeInsets imageEdgeInsets);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ adjustsImageWhenHighlighted) (BOOL adjustsImageWhenHighlighted);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ showsTouchWhenHighlighted) (BOOL showsTouchWhenHighlighted);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ adjustsImageWhenDisabled) (BOOL adjustsImageWhenDisabled);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ reversesTitleShadowWhenHighlighted) (BOOL reversesTitleShadowWhenHighlighted);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ image) (UIImage *image, UIControlState state);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ text) (NSString *title, UIControlState state);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ textColor) (UIColor *color, UIControlState state);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain * (^ backgroundImage) (UIImage *image, UIControlState state);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ attributedTitle) (NSAttributedString *title, UIControlState state);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ titleShadow) (UIColor *color, UIControlState state);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ font) (UIFont *font);

RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ textAlignment)(NSTextAlignment textAlignment);
RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ numberOfLines)(NSInteger numberOfLines);
RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ lineBreakMode)(NSLineBreakMode lineBreakMode);
RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
RPCATEGORY_CHAIN_PROPERTY RnpUIButtonChain *(^ baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);

@end

RPCreate(UIButton)
static inline UIButton *UIButtonNewWithType(UIButtonType buttonType){
    return [UIButton buttonWithType:buttonType];
}
RPCATEGORY_EXINTERFACE(UIButton, RnpUIButtonChain)
NS_ASSUME_NONNULL_END
