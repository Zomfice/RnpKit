//
//  RnpBaseAttributedStringChain.h
//  RnpKit
//
//  Created by user on 2019/11/29.
//

#import "RnpChainDefine.h"

NS_ASSUME_NONNULL_BEGIN

@interface RnpBaseAttributedStringChain<__covariant ObjectType> : NSObject

- (instancetype)initWithAttributedString:(NSAttributedString *)attributedString;

@property (nonatomic, strong, readonly) NSAttributedString * attributedString;

RPCATEGORY_CHAIN_PROPERTY NSDictionary<NSAttributedStringKey, id> * (^ attributesAtIndex)(NSUInteger location, NSRangePointer _Nullable range);

RPCATEGORY_CHAIN_PROPERTY _Nullable id(^attribute_atIndex_effectiveRange)(NSAttributedStringKey attrName,NSUInteger location,NSRangePointer _Nullable range);

RPCATEGORY_CHAIN_PROPERTY NSDictionary<NSAttributedStringKey, id> * (^ attributesAtIndex_longestEffectiveRange_inRange)(NSUInteger location, NSRangePointer _Nullable range, NSRange rangeLimit);

RPCATEGORY_CHAIN_PROPERTY _Nullable id(^attribute_atIndex_longestEffectiveRange_inRange)(NSAttributedStringKey attrName,NSUInteger location,NSRangePointer _Nullable range,NSRange inRange);

RPCATEGORY_CHAIN_PROPERTY BOOL (^isEqual)(ObjectType object);

@end



NS_ASSUME_NONNULL_END
