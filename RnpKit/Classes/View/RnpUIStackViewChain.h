//
//  RnpUIStackViewChain.h
//  Pods
//
//  Created by user on 2022/2/9.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUIStackViewChain;
API_AVAILABLE(ios(9.0))
@interface RnpUIStackViewChain : RnpBaseViewChain<RnpUIStackViewChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ addArrangedSubview) (UIView *view);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ addArrangedSubviews) (NSArray<UIView *> *views);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ removeArrangedSubview) (UIView *view);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ removeAllArrangedSubview) (void);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ insertArrangedSubview) (UIView *view, NSUInteger stackIndex);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ axis) (UILayoutConstraintAxis axis);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ distribution) (UIStackViewDistribution distribution);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ alignment) (UIStackViewAlignment alignment);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ spacing) (CGFloat spacing);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ setCustomSpacing) (CGFloat spacing, UIView * afterView) API_AVAILABLE(ios(11.0),tvos(11.0));

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ baselineRelativeArrangement) (BOOL baselineRelativeArrangement);

RPCATEGORY_CHAIN_PROPERTY RnpUIStackViewChain * (^ layoutMarginsRelativeArrangement) (BOOL layoutMarginsRelativeArrangement);

@end
API_AVAILABLE(ios(9.0))
RPCreateFrame(UIStackView)
API_AVAILABLE(ios(9.0))
RPCreate(UIStackView)
API_AVAILABLE(ios(9.0))
static inline UIStackView *UIStackViewNewWithArrangedSubviews(NSArray<UIView *> * views){
    return [[UIStackView alloc] initWithArrangedSubviews:views];
}
RPCATEGORY_EXINTERFACE(UIStackView, RnpUIStackViewChain)

NS_ASSUME_NONNULL_END
