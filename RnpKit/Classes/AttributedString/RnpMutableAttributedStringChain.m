//
//  RnpMutableAttributedStringChain.m
//  RnpKit
//
//  Created by user on 2019/12/10.
//

#import "RnpMutableAttributedStringChain.h"
#import "RnpAttributedDefine.h"

@interface RnpMutableAttributedStringChain ()

@property (nonatomic, strong) NSMutableAttributedString * attString;

@end

@implementation RnpMutableAttributedStringChain

- (instancetype)initWithAttributedString:(NSAttributedString *)attributedString
{
    if (self = [super initWithAttributedString:attributedString]) {
        self.attString = (NSMutableAttributedString *)self.attributedString;
    }
    return self;
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSRange, NSString * _Nonnull))replaceCharactersInRange_withString
{
    return ^RnpMutableAttributedStringChain *(NSRange range, NSString * str){
        if ([self checkOutOfBoundsWithRange:range]) {
            [self.attString replaceCharactersInRange:range withString:str];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSDictionary<NSAttributedStringKey,id> * _Nullable, NSRange))setAttributes_range
{
    return ^RnpMutableAttributedStringChain *(NSDictionary<NSAttributedStringKey,id> * _Nullable attrs, NSRange range){
        if ([self checkOutOfBoundsWithRange:range]) {
            [self.attString setAttributes:attrs range:range];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSAttributedStringKey _Nonnull, id _Nonnull, NSRange))addAttribute_value_range
{
    return  ^RnpMutableAttributedStringChain *(NSAttributedStringKey _Nonnull name, id _Nonnull value, NSRange range){
        if ([self checkOutOfBoundsWithRange:range]) {
            [self.attString addAttribute:name value:value range:range];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSDictionary<NSAttributedStringKey,id> * _Nonnull, NSRange))addAttributes_range
{
    return  ^RnpMutableAttributedStringChain *(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range){
        if ([self checkOutOfBoundsWithRange:range]) {
            [self.attString addAttributes:attrs range:range];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSAttributedStringKey _Nonnull, NSRange))removeAttribute_range
{
    return  ^RnpMutableAttributedStringChain *(NSAttributedStringKey _Nonnull name, NSRange range){
        if ([self checkOutOfBoundsWithRange:range]) {
            [self.attString removeAttribute:name range:range];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSRange, NSAttributedString * _Nonnull))replaceCharactersInRange_withAttributedString
{
    return ^ RnpMutableAttributedStringChain *(NSRange range, NSAttributedString *attrString){
        if ([self checkOutOfBoundsWithRange:range]) {
            [self.attString replaceCharactersInRange:range withAttributedString:attrString];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSAttributedString * _Nonnull, NSUInteger))insertAttributedString_atIndex
{
    return ^ RnpMutableAttributedStringChain *(NSAttributedString *attrString,NSUInteger loc){
        BOOL b = (self.attString.string.length >= loc);
        NSAssert(b, @"%@ index -- %lu 越界", self.attString,loc);
        if (b) {
            [self.attString insertAttributedString:attrString atIndex:loc];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSAttributedString * _Nonnull))appendAttributedString
{
    return ^ RnpMutableAttributedStringChain *(NSAttributedString *attrString){
        [self.attString appendAttributedString:attrString];
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSRange))deleteCharactersInRange
{
    return ^ RnpMutableAttributedStringChain *(NSRange range){
        if ([self checkOutOfBoundsWithRange:range]) {
            [self.attString deleteCharactersInRange:range];
        }
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(NSAttributedString * _Nonnull))setAttributedString
{
    return ^ RnpMutableAttributedStringChain *(NSAttributedString * attrString){
        [self.attString setAttributedString:attrString];
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(void))beginEditing
{
    return ^ RnpMutableAttributedStringChain *(void){
        [self.attString beginEditing];
        return self;
    };
}

- (RnpMutableAttributedStringChain * _Nonnull (^)(void))endEditing
{
    return ^ RnpMutableAttributedStringChain *(void){
        [self.attString endEditing];
        return self;
    };
}

- (BOOL)checkOutOfBoundsWithRange:(NSRange)range{
    BOOL b = (self.attString.string.length >= (range.location + range.length));
    NSAssert(b, @"%@ range -- %@ 越界", self.attString,[NSValue valueWithRange:range]);
    return b;
}

@end
RPCATEGORY_ATTRIBUTED_IMPLEMENTATION(NSMutableAttributedString,RnpMutableAttributedStringChain)
