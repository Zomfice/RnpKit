//
//  RnpBaseViewChain+Layout.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"
#if __has_include(<Masonry/Masonry.h>)
#import <Masonry/Masonry.h>
#elif __has_include("Masonry.h")
#import "Masonry.h"
#endif
NS_ASSUME_NONNULL_BEGIN
@class MASConstraintMaker;
typedef void(^Constraint)(MASConstraintMaker *make);
@interface RnpBaseViewChain <ObjectType> (Layout)

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ mas_makeConstraints)(Constraint block);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ mas_updateConstraints)(Constraint block);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ mas_remakeConstraints)(Constraint block);
@end

NS_ASSUME_NONNULL_END
