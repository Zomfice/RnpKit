//
//  RnpBaseViewChain.h
//  Pods-RnpKit_Example
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpChainDefine.h"
#define RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RPModelType, RPPropertyClass) RPCATEGORY_CHAIN_IMPLEMENTATION(RPMethod,RPParaType, view, RPModelType, RPPropertyClass)

#define RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION_VERSION(RPMethod,RPParaType, RPModelType, RPPropertyClass,VETRSION) RPCATEGORY_CHAIN_IMPLEMENTATION_VERSION(RPMethod,RPParaType, view, RPModelType, RPPropertyClass, VETRSION)

#define RPCATEGORY_VIEW_IMPLEMENTATION(RPClass, modelType)\
@implementation RPClass (EXT)\
- (modelType *)rnp{\
id __rnp = objc_getAssociatedObject(self, "rnp"); \
if(!__rnp){\
__rnp = [[modelType alloc] initWithTag:self.tag andView:self];\
objc_setAssociatedObject (self, "rnp", __rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );\
}\
return __rnp;\
}\
- (void)setRnp:(modelType *)rnp{\
objc_setAssociatedObject (self, "rnp", rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );\
} \
@end

NS_ASSUME_NONNULL_BEGIN

typedef void(^RPAssignViewLoad)(__kindof UIView *view);
@interface RnpBaseViewChain<__covariant  ObjectType> : NSObject

- (instancetype)initWithTag:(NSInteger)tag andView:(UIView *)view;

@property (nonatomic, assign, readonly) NSInteger tag;

@property (nonatomic, weak, readonly) __kindof UIView *view;

@property (nonatomic, assign, readonly) Class viewClass;

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addSubLayer) (CALayer * layer);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ bounds) (CGRect frame);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ frame) (CGRect frame);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ origin) (CGPoint origin);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ x) (CGFloat x);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ y) (CGFloat y);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ size) (CGSize size);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ width) (CGFloat width);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ height) (CGFloat height);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ center) (CGPoint center);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ centerX) (CGFloat centerX);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ centerY) (CGFloat centerY);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ top) (CGFloat top);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ left) (CGFloat left);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ bottom) (CGFloat bottom);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ right) (CGFloat right);


RPCATEGORY_CHAIN_PROPERTY CGFloat (^ visibleAlpha) (void);

RPCATEGORY_CHAIN_PROPERTY CGRect (^ convertRectTo) (CGRect rect, UIView * toView);

RPCATEGORY_CHAIN_PROPERTY CGRect (^ convertRectFrom) (CGRect rect, UIView * toView);

RPCATEGORY_CHAIN_PROPERTY CGPoint (^ convertPointTo) (CGPoint point, UIView * toView);

RPCATEGORY_CHAIN_PROPERTY CGPoint (^ convertPointFrom) (CGPoint point, UIView * toView);

RPCATEGORY_CHAIN_PROPERTY UIView *(^ viewWithTag) (NSInteger tag);



RPCATEGORY_CHAIN_PROPERTY ObjectType (^ backgroundColor) (UIColor *backgroundColor);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ tintColor) (UIColor *tintColor);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ alpha) (CGFloat alpha);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ hidden) (BOOL hidden);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ clipsToBounds) (BOOL clipsToBounds);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ opaque) (BOOL opaque);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ userInteractionEnabled) (BOOL userInteractionEnabled);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ multipleTouchEnabled) (BOOL multipleTouchEnabled);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ endEditing) (BOOL endEditing);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ contentMode) (UIViewContentMode contentMode);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ transform) (CGAffineTransform transform);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ autoresizingMask) (UIViewAutoresizing autoresizingMask);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ autoresizesSubviews) (BOOL autoresizesSubviews);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ setTag) (NSInteger tag);


RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addToSuperView) (UIView *superView);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addSubView) (UIView *subView);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addGesture) (UIGestureRecognizer *gesture);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeGesture) (UIGestureRecognizer *gesture);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addGestureWithTag) (UIGestureRecognizer *gesture, NSString *tag);

@property (nonatomic, strong, readonly) UIGestureRecognizer * (^ getGestureByTag) (NSString * tag);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeGestureByTag) (NSString *tag);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ bringSubViewToFront) (UIView *view);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ sendSubViewToBack) (UIView *view);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ exchangeSubView) (UIView *front, UIView *backView);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ exchangeSubviewWithIndex) (NSInteger front, NSInteger back);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSubViewBelow) (UIView* below, UIView * above);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSubViewAbove) (UIView* above, UIView * below);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSubViewIndex) (UIView* above, NSInteger index);



RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shouldRasterize)(BOOL shouldRasterize);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ layerOpacity)(float layerOpacity);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ layerBackGroundColor)(UIColor * backgroundColor);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ layerOpaque)(BOOL opaque);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ rasterizationScale)(CGFloat rasterizationScale);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ masksToBounds)(BOOL masksToBounds);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ cornerRadius)(CGFloat cornerRadius);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ border)(CGFloat borderWidth, UIColor *borderColor);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ borderWidth)(CGFloat borderWidth);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ borderColor)(CGColorRef borderColor);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ zPosition)(CGFloat zPosition);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ anchorPoint)(CGPoint anchorPoint);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadow)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowColor)(CGColorRef shadowColor);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOpacity)(CGFloat shadowOpacity);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOffset)(CGSize shadowOffset);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowRadius)(CGFloat shadowRadius);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ layerTransform)(CATransform3D transform);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowPath) (CGPathRef shadowPath);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ assignTo)(RPAssignViewLoad assignTo);

RPCATEGORY_CHAIN_PROPERTY ObjectType (^ sizeToFit) (void);
RPCATEGORY_CHAIN_PROPERTY CGSize (^ sizeToFitSize) (CGSize size);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeFormSuperView) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ layoutIfNeeded) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ setNeedsLayout) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ setNeedsDisplay) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ setNeedsDisplayRect) (CGRect rect);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ translatesAutoresizingMaskIntoConstraints) (BOOL b);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ sendToBack) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ bringToFront) (void);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addToStackView) (UIStackView *stackView) API_AVAILABLE(ios(9.0));
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ removeToStackView) (void) API_AVAILABLE(ios(9.0));
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ setupToVar)(UIView  *_Nonnull* _Nonnull  var);
RPCATEGORY_CHAIN_PROPERTY ObjectType (^ addToSuperViewAndVar) (UIView *superView, UIView  *_Nonnull* _Nonnull  var);

@end

NS_ASSUME_NONNULL_END
