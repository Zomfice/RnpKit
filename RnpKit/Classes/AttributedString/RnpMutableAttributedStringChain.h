//
//  RnpMutableAttributedStringChain.h
//  RnpKit
//
//  Created by user on 2019/12/10.
//

#import "RnpBaseAttributedStringChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpMutableAttributedStringChain;
@interface RnpMutableAttributedStringChain : RnpBaseAttributedStringChain<RnpMutableAttributedStringChain *>


RPCATEGORY_CHAIN_PROPERTY RnpMutableAttributedStringChain * (^ replaceCharactersInRange_withString)(NSRange range, NSString * str);

RPCATEGORY_CHAIN_PROPERTY RnpMutableAttributedStringChain * (^ setAttributes_range)( NSDictionary<NSAttributedStringKey, id> * _Nullable attrs, NSRange range);

RPCATEGORY_CHAIN_PROPERTY RnpMutableAttributedStringChain * (^ addAttribute_value_range)(NSAttributedStringKey name,id value,NSRange range);

RPCATEGORY_CHAIN_PROPERTY RnpMutableAttributedStringChain * (^ addAttributes_range)(NSDictionary<NSAttributedStringKey, id> * attrs,NSRange range);

RPCATEGORY_CHAIN_PROPERTY RnpMutableAttributedStringChain * (^ removeAttribute_range)(NSAttributedStringKey name,NSRange range);

RPCATEGORY_CHAIN_PROPERTY  RnpMutableAttributedStringChain * (^ replaceCharactersInRange_withAttributedString)(NSRange range,NSAttributedString *attrString);

RPCATEGORY_CHAIN_PROPERTY  RnpMutableAttributedStringChain * (^ insertAttributedString_atIndex)(NSAttributedString * attrString,NSUInteger loc);

RPCATEGORY_CHAIN_PROPERTY  RnpMutableAttributedStringChain * (^ appendAttributedString)(NSAttributedString * attrString);

RPCATEGORY_CHAIN_PROPERTY  RnpMutableAttributedStringChain * (^ deleteCharactersInRange)(NSRange range);

RPCATEGORY_CHAIN_PROPERTY  RnpMutableAttributedStringChain * (^ setAttributedString)(NSAttributedString * attrString);

RPCATEGORY_CHAIN_PROPERTY  RnpMutableAttributedStringChain * (^ beginEditing)(void);

RPCATEGORY_CHAIN_PROPERTY  RnpMutableAttributedStringChain * (^ endEditing)(void);

@end
static inline NSMutableAttributedString * NSMutableAttributedStringNew(){
    return [NSMutableAttributedString new];
}
static inline NSMutableAttributedString * NSMutableAttributedStringWithStringNew(NSString * string){
    return [[NSMutableAttributedString alloc] initWithString:string];
}
static inline NSMutableAttributedString * NSMutableAttributedStringWithStringAndAttributesNew(NSString * string,NSDictionary * attributes){
    return [[NSMutableAttributedString alloc] initWithString:string attributes:attributes];
}
RPCATEGORY_EXINTERFACE(NSMutableAttributedString, RnpMutableAttributedStringChain)
NS_ASSUME_NONNULL_END
