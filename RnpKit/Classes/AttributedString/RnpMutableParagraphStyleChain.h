//
//  RnpMutableParagraphStyleChain.h
//  Pods
//
//  Created by user on 2019/12/10.
//

#import "RnpChainDefine.h"

NS_ASSUME_NONNULL_BEGIN

@interface RnpMutableParagraphStyleChain : NSObject

- (instancetype)initWithStyle:(NSMutableParagraphStyle *)style;

@property (nonatomic, strong, readonly) NSMutableParagraphStyle * style;

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ lineSpacing)(CGFloat lineSpacing);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ paragraphSpacing)(CGFloat paragraphSpacing);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ alignment)(CGFloat alignment);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ firstLineHeadIndent)(CGFloat firstLineHeadIndent);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ headIndent)(CGFloat headIndent);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ tailIndent)(CGFloat tailIndent);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ lineBreakMode)(NSLineBreakMode lineBreakMode);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ minimumLineHeight)(CGFloat minimumLineHeight);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ maximumLineHeight)(CGFloat maximumLineHeight);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ baseWritingDirection)(NSWritingDirection baseWritingDirection);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ lineHeightMultiple)(CGFloat lineHeightMultiple);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ paragraphSpacingBefore)(CGFloat paragraphSpacingBefore);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ hyphenationFactor)(float hyphenationFactor);

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ tabStops)(NSArray<NSTextTab *> * tabStops) API_AVAILABLE(macos(10.0), ios(7.0));;

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ defaultTabInterval)(CGFloat defaultTabInterval) API_AVAILABLE(macos(10.0), ios(7.0));

RPCATEGORY_CHAIN_PROPERTY RnpMutableParagraphStyleChain * (^ allowsDefaultTighteningForTruncation)(BOOL allowsDefaultTighteningForTruncation) API_AVAILABLE(macos(10.11), ios(9.0));

@end

static inline NSMutableParagraphStyle * NSMutableParagraphStyleNew(){
    return [[NSMutableParagraphStyle alloc] init];
}

RPCATEGORY_EXINTERFACE(NSMutableParagraphStyle, RnpMutableParagraphStyleChain)


NS_ASSUME_NONNULL_END
