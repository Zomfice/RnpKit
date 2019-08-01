//
//  RnpBaseControlChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN

@interface RnpBaseControlChain <__covariant ObjectType>: RnpBaseViewChain<ObjectType>
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ enabled)(BOOL enabled);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ selected)(BOOL selected);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ highlighted)(BOOL highlighted);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentVerticalAlignment)(UIControlContentVerticalAlignment contentVerticalAlignment);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentHorizontalAlignment)(UIControlContentHorizontalAlignment contentHorizontalAlignment);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addTarget)(id target, SEL action, UIControlEvents controlEvents);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeTarget) (id target,SEL action, UIControlEvents controlEvents);

@end

NS_ASSUME_NONNULL_END
