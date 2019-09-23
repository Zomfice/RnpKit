//
//  RnpUILabelChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUILabelChain;
@interface RnpUILabelChain : RnpBaseViewChain<RnpUILabelChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ text)(NSString *text);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ font)(UIFont *font);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ textColor)(UIColor *textColor);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ attributedText)(NSAttributedString *attributedText);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ textAlignment)(NSTextAlignment textAlignment);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ numberOfLines)(NSInteger numberOfLines);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ lineBreakMode)(NSLineBreakMode lineBreakMode);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ allowsDefaultTighteningForTruncation)(BOOL allowsDefaultTighteningForTruncation);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ minimumScaleFactor)(CGFloat minimumScaleFactor);
RPCATEGORY_CHAIN_PROPERTY RnpUILabelChain *(^ preferredMaxLayoutWidth)(CGFloat preferredMaxLayoutWidth);

RPCATEGORY_CHAIN_PROPERTY CGSize (^ sizeWithLimitSize) (CGSize limitSize);

RPCATEGORY_CHAIN_PROPERTY CGSize (^ sizeWithOutLimitSize) (void);

@end

RPCreateFrame(UILabel)
RPCreate(UILabel)
RPCATEGORY_EXINTERFACE(UILabel, RnpUILabelChain)

NS_ASSUME_NONNULL_END
