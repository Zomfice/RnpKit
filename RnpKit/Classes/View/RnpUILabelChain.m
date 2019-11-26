//
//  RnpUILabelChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUILabelChain.h"
#import <objc/runtime.h>

#define RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUILabelChain *,UILabel)

@implementation RnpUILabelChain

RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(text, NSString *);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(font, UIFont *);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(textColor, UIColor *);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(attributedText, NSAttributedString *);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(textAlignment, NSTextAlignment);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(numberOfLines, NSInteger);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(lineBreakMode, NSLineBreakMode);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(baselineAdjustment, UIBaselineAdjustment);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(allowsDefaultTighteningForTruncation, BOOL);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(preferredMaxLayoutWidth, CGFloat);
RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION(minimumScaleFactor, CGFloat);

@end

RPCATEGORY_VIEW_IMPLEMENTATION(UILabel, RnpUILabelChain)
#undef RPCATEGORY_CHAIN_LABLE_IMPLEMENTATION
