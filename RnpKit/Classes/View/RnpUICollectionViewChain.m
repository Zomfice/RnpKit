//
//  RnpUICollectionViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUICollectionViewChain.h"

#define RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUICollectionViewChain *,UICollectionView)

@implementation RnpUICollectionViewChain

RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(collectionViewLayout, UICollectionViewLayout *)
RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(delegate, id<UICollectionViewDelegate>)
RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(dataSource, id<UICollectionViewDataSource>)

RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(allowsSelection, BOOL)
RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(allowsMultipleSelection, BOOL)

- (RnpUICollectionViewChain * _Nonnull (^)(void))adJustedContentIOS11{
    return ^ (){
        if (@available(iOS 11.0, *)) {
            [(UICollectionView *)self.view setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
        }
        return self;
    };
}

- (RnpUICollectionViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerCellNib{
    return ^ (UINib *nib, NSString *identifier){
        [(UICollectionView *)self.view registerNib:nib forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (RnpUICollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerCellClass{
    return ^ (Class class, NSString *identifier){
        [(UICollectionView *)self.view registerClass:class forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (RnpUICollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull, NSString * _Nonnull))registerViewClass{
    return ^ (Class class, NSString *identifier, NSString *kind){
        [(UICollectionView *)self.view registerClass:class forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}
- (RnpUICollectionViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull, NSString * _Nonnull))registerViewNib{
    return ^ (UINib * nib, NSString *identifier, NSString *kind){
        [(UICollectionView *)self.view registerNib:nib forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}

- (RnpUICollectionViewChain * _Nonnull (^)(void))reloadData{
    return ^ (){
        [CATransaction begin];
        [CATransaction setDisableActions:YES];
        [(UICollectionView *)self.view reloadData];
        [CATransaction commit];
        
        return self;
    };
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UICollectionView, RnpUICollectionViewChain)
#undef RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION
