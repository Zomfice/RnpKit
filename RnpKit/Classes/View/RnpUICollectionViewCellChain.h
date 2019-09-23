//
//  RnpUICollectionViewCellChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUICollectionViewCellChain;
@interface RnpUICollectionViewCellChain : RnpBaseViewChain<RnpUICollectionViewCellChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewCellChain * (^ backgroundView)(UIView* backgroundView);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewCellChain * (^ selectedBackgroundView)(UIView* selectedBackgroundView);
@end

RPCreateFrame(UICollectionViewCell)
RPCreate(UICollectionViewCell)
RPCATEGORY_EXINTERFACE(UICollectionViewCell, RnpUICollectionViewCellChain)
NS_ASSUME_NONNULL_END
