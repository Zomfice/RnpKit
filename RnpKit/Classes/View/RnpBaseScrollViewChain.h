//
//  RnpBaseScrollViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN

@interface RnpBaseScrollViewChain <__covariant ObjectType>: RnpBaseViewChain<ObjectType>

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentSize) (CGSize contentSize);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentOffset) (CGPoint contentOffset);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentInset) (UIEdgeInsets contentInset);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ bounces) (BOOL bounces);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ alwaysBounceVertical) (BOOL alwaysBounceVertical);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ alwaysBounceHorizontal) (BOOL alwaysBounceHorizontal);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ pagingEnabled) (BOOL pagingEnabled);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ scrollEnabled) (BOOL scrollEnabled);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ showsHorizontalScrollIndicator) (BOOL showsHorizontalScrollIndicator);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ showsVerticalScrollIndicator) (BOOL showsVerticalScrollIndicator);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ scrollsToTop) (BOOL scrollsToTop);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ indicatorStyle) (BOOL indicatorStyle);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ scrollIndicatorInsets) (UIEdgeInsets scrollIndicatorInsets);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ directionalLockEnabled) (BOOL directionalLockEnabled);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ minimumZoomScale) (CGFloat minimumZoomScale);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ maximumZoomScale) (CGFloat maximumZoomScale);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ zoomScale) (CGFloat zoomScale);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentOffsetAnimated)(CGPoint point, BOOL animated);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentOffsetToVisible)(CGRect rect, BOOL animated);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ delegate) (id <UIScrollViewDelegate> delegate);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ adJustedContentIOS11)(void);

@end

NS_ASSUME_NONNULL_END
