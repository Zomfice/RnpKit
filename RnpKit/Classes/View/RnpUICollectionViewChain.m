//
//  RnpUICollectionViewChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUICollectionViewChain.h"
#import <objc/runtime.h>

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

/// 注册Cell
- (RnpUICollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))registerNib{
    return ^ (Class class){
        [(UICollectionView *)self.view registerNib:[UINib nibWithNibName:NSStringFromClass(class) bundle:nil] forCellWithReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}


- (RnpUICollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))registerClass{
    return ^ (Class class){
        [(UICollectionView *)self.view registerClass:class forCellWithReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}

- (RnpUICollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained,NSString * _Nonnull))registerClassforSupplementaryView{
    return ^ (Class class,NSString * kind){
        [(UICollectionView *)self.view registerClass:class forSupplementaryViewOfKind:kind withReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}

- (RnpUICollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained,NSString * _Nonnull))registerNibforSupplementaryView{
    return ^ (Class class,NSString * kind){
        [(UICollectionView *)self.view registerNib:[UINib nibWithNibName:NSStringFromClass(class) bundle:nil] forSupplementaryViewOfKind:kind withReuseIdentifier:NSStringFromClass(class)];
        return self;
    };
}
// Cell复用
- (__kindof UICollectionViewCell * _Nullable (^)(Class  _Nonnull __unsafe_unretained, NSIndexPath * _Nonnull))dequeueReusableCell{
    return ^ (Class class, NSIndexPath * indexPath){
        return [(UICollectionView *)self.view dequeueReusableCellWithReuseIdentifier:NSStringFromClass(class) forIndexPath:indexPath];
    };
}

- (__kindof UICollectionReusableView * _Nullable (^)(Class  _Nonnull __unsafe_unretained,NSString * _Nonnull, NSIndexPath * _Nonnull))dequeueReusableCellSupplementaryView{
    return ^ (Class class,NSString * kind, NSIndexPath * indexPath){
        return [(UICollectionView *)self.view dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:NSStringFromClass(class) forIndexPath:indexPath];
    };
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UICollectionView, RnpUICollectionViewChain)
#undef RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION
