//
//  RnpMutableParagraphStyleChain.m
//  Pods
//
//  Created by user on 2019/12/10.
//

#import "RnpMutableParagraphStyleChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_IMPLEMENTATION(RPMethod,RPParaType, style, RnpMutableParagraphStyleChain *, NSMutableParagraphStyle)

@implementation RnpMutableParagraphStyleChain

- (instancetype)initWithStyle:(NSMutableParagraphStyle *)style
{
    if (self = [super init]) {
        _style = style;
    }
    return self;
}

RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(lineSpacing,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(paragraphSpacing,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(alignment,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(firstLineHeadIndent,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(headIndent,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(tailIndent,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(lineBreakMode,NSLineBreakMode);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(minimumLineHeight,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(maximumLineHeight,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(baseWritingDirection,NSWritingDirection);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(lineHeightMultiple,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(paragraphSpacingBefore,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(hyphenationFactor,float);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(tabStops,NSArray<NSTextTab *> *);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(defaultTabInterval,CGFloat);
RPCATEGORY_CHAIN_PARAGRAP_STYLE_IMPLEMENTATION(allowsDefaultTighteningForTruncation,BOOL);


@end
@implementation NSMutableParagraphStyle (EXT)

- (RnpMutableParagraphStyleChain *)rnp{
    id __rnp = objc_getAssociatedObject(self, "rnp");
    if(!__rnp){
        __rnp = [[RnpMutableParagraphStyleChain alloc] initWithStyle:self];
        objc_setAssociatedObject (self, "rnp", __rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
    }
    return __rnp;
}
- (void)setRnp:(RnpMutableParagraphStyleChain *)rnp{
    objc_setAssociatedObject (self, "rnp", rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}

@end
