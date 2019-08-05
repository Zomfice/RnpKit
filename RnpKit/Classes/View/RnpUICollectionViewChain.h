//
//  RnpUICollectionViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseScrollViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUICollectionViewChain;
@interface RnpUICollectionViewChain : RnpBaseScrollViewChain<RnpUICollectionViewChain*>

RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ collectionViewLayout)(UICollectionViewLayout *collectionViewLayout);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ delegate)(id<UICollectionViewDelegate> delegate);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ dataSource)(id<UICollectionViewDataSource> dataSource);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ allowsSelection)(BOOL allowsSelection);

RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ allowsMultipleSelection)(BOOL allowsMultipleSelection);

RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerCellClass)(Class cellClass, NSString *identifier);

RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerCellNib)(UINib * nib, NSString *identifier);

RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerViewClass)(Class viewClass, NSString *identifier, NSString *kind);

RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerViewNib)(UINib * viewNib, NSString *identifier, NSString *kind);

RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain * (^ adJustedContentIOS11)(void);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain * (^ reloadData)(void);

//注册Cell
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerNib)(Class viewClass);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerClass)(Class viewClass);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerClassforSupplementaryView)(Class viewClass,NSString * kind);
RPCATEGORY_CHAIN_PROPERTY RnpUICollectionViewChain *(^ registerNibforSupplementaryView)(Class viewClass,NSString * kind);
// 复用Cell

RPCATEGORY_CHAIN_PROPERTY __kindof UICollectionViewCell *(^ dequeueReusableCell)(Class viewClass, NSIndexPath * indexPath);
RPCATEGORY_CHAIN_PROPERTY __kindof UICollectionReusableView *(^ dequeueReusableCellSupplementaryView)(Class viewClass,NSString * kind,NSIndexPath *indexPath);

@end

RPCreateFrame(UICollectionView)
RPCreate(UICollectionView)
static inline UICollectionView *UICollectionViewCreateWithLayout(UICollectionViewFlowLayout *layout){
    return [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
}
RPCATEGORY_EXINTERFACE(UICollectionView, RnpUICollectionViewChain)
NS_ASSUME_NONNULL_END
