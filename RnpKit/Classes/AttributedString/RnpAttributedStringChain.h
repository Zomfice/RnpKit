//
//  RnpAttributedStringChain.h
//  Masonry
//
//  Created by user on 2019/12/9.
//

#import "RnpBaseAttributedStringChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpAttributedStringChain;
@interface RnpAttributedStringChain : RnpBaseAttributedStringChain<RnpAttributedStringChain *>



@end

static inline NSAttributedString * NSAttributedStringNew(){
    return [NSAttributedString new];
}
static inline NSAttributedString * NSAttributedStringWithStringNew(NSString * string){
    return [[NSAttributedString alloc] initWithString:string];
}
static inline NSAttributedString * NSAttributedStringWithStringAndAttributesNew(NSString * string,NSDictionary * attributes){
    return [[NSAttributedString alloc] initWithString:string attributes:attributes];
}
RPCATEGORY_EXINTERFACE(NSAttributedString, RnpAttributedStringChain)
NS_ASSUME_NONNULL_END
