//
//  RnpBaseViewChain+Layout.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain+Layout.h"

#define  RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(methodName, masonryMethod) \
- (id (^)( void (^constraints)(MASConstraintMaker *)) )methodName    \
{   \
return ^id ( void (^constraints)(MASConstraintMaker *) ) {  \
if (self.view.superview) { \
[self.view masonryMethod:constraints];    \
}   \
return self;    \
};  \
}

#define  RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(methodName, masonryMethod) \
- (id (^)( void (^constraints)(MASConstraintMaker *)) )methodName    \
{   \
return ^id ( void (^constraints)(MASConstraintMaker *) ) {  \
return self;    \
};  \
}

@implementation RnpBaseViewChain (Layout)

#if __has_include(<Masonry/Masonry.h>) || __has_include("Masonry.h")
RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(mas_makeConstraints, mas_makeConstraints);
RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(mas_updateConstraints, mas_updateConstraints);
RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(mas_remakeConstraints, mas_remakeConstraints);
#else
RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(mas_makeConstraints, mas_makeConstraints);
RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(mas_updateConstraints, mas_updateConstraints);
RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(mas_remakeConstraints, mas_remakeConstraints);
#endif

@end

#undef RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION
#undef RPCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL
