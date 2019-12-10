//
//  RnpBaseAttributedStringChain.m
//  RnpKit
//
//  Created by user on 2019/11/29.
//

#import "RnpBaseAttributedStringChain.h"

@implementation RnpBaseAttributedStringChain

- (instancetype)initWithAttributedString:(NSAttributedString *)attributedString
{
    if (self = [super init]) {
        _attributedString = attributedString;
    }
    return self;
}

- (NSDictionary<NSAttributedStringKey,id> * _Nonnull (^)(NSUInteger, NSRangePointer _Nullable))attributesAtIndex
{
    
    return  ^NSDictionary<NSAttributedStringKey,id> *(NSUInteger location, NSRangePointer _Nullable range)
    {
        return  [self.attributedString attributesAtIndex:location effectiveRange:range];
    };
}

- (id  _Nullable (^)(NSAttributedStringKey _Nonnull, NSUInteger, NSRangePointer _Nullable))attribute_atIndex_effectiveRange
{
    return ^(NSAttributedStringKey _Nonnull attrName, NSUInteger location, NSRangePointer _Nullable range)
    {
        return [self.attributedString attribute:attrName atIndex:location effectiveRange:range];
    };
}

- (NSDictionary<NSAttributedStringKey,id> * _Nonnull (^)(NSUInteger, NSRangePointer _Nullable, NSRange))attributesAtIndex_longestEffectiveRange_inRange
{
    return ^(NSUInteger location,NSRangePointer _Nullable range,NSRange rangeLimit)
    {
        return [self.attributedString attributesAtIndex:location longestEffectiveRange:range inRange:rangeLimit];
    };
}

- (id  _Nullable (^)(NSAttributedStringKey _Nonnull, NSUInteger, NSRangePointer _Nullable, NSRange))attribute_atIndex_longestEffectiveRange_inRange
{
    return ^(NSAttributedStringKey _Nonnull attrName, NSUInteger location, NSRangePointer _Nullable range, NSRange rangeLimit)
    {
        return [self.attributedString attribute:attrName atIndex:location longestEffectiveRange:range inRange:rangeLimit];
    };
}

- (BOOL (^)(id _Nonnull))isEqual
{
    return ^BOOL(NSAttributedString * other){
        return [self.attributedString isEqualToAttributedString:other];
    };
}

@end
