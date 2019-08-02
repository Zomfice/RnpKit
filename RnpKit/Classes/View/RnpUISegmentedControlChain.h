//
//  RnpUISegmentedControlChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUISegmentedControlChain;
@interface RnpUISegmentedControlChain : RnpBaseControlChain<RnpUISegmentedControlChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ momentary) (BOOL momentary);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ apportionsSegmentWidthsByContent) (BOOL apportionsSegmentWidthsByContent);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ removeAllSegments) (void);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ insertSegmentWithTitle) (NSString * title, NSUInteger index, BOOL animated);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ insertSegmentWithImage) (UIImage * image, NSUInteger index, BOOL animated);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ removeSegmentAtIndex) (NSUInteger index);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setTitle) (NSString *title, NSUInteger index);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setImage) (UIImage *image, NSUInteger index);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setWidth) (CGFloat width, NSUInteger index);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setContentOffset) (CGSize offset, NSUInteger index);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setEnabled) (BOOL enable, NSUInteger index);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ selectedSegmentIndex) (NSInteger selectedSegmentIndex);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setBackgroundImage) (UIImage *image, UIControlState state, UIBarMetrics barMetrics);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setDividerImage) (UIImage *image, UIControlState leftState, UIControlState rightState, UIBarMetrics barMetrics);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setTitleTextAttributes) (NSDictionary <NSAttributedStringKey ,id>* attributes, UIControlState state);
RPCATEGORY_CHAIN_PROPERTY RnpUISegmentedControlChain* (^ setContentPositionAdjustment) (UIOffset adjustment, UISegmentedControlSegment leftCenterRightOrAlone, UIBarMetrics barMetrics);
@end
RPCreate(UISegmentedControl)
RPCATEGORY_EXINTERFACE(UISegmentedControl, RnpUISegmentedControlChain)
NS_ASSUME_NONNULL_END
