//
//  RnpUICollectionViewCellChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUICollectionViewCellChain.h"
#define RPCATEGORY_CHAIN_COLLECTIONVIEWCELL_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUICollectionViewCellChain *,UICollectionViewCell)

@implementation RnpUICollectionViewCellChain

RPCATEGORY_CHAIN_COLLECTIONVIEWCELL_IMPLEMENTATION(backgroundView,UIView*);
RPCATEGORY_CHAIN_COLLECTIONVIEWCELL_IMPLEMENTATION(selectedBackgroundView,UIView*);

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UICollectionViewCell, RnpUICollectionViewCellChain)
#undef RPCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION
