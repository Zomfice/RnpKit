//
//  RnpUISegmentedControlChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUISegmentedControlChain.h"

#define RPCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUISegmentedControlChain *,UISegmentedControl)

#define RPCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(RPTYPE,METHOD)\
- (RnpUISegmentedControlChain * _Nonnull (^)(RPTYPE, NSUInteger))METHOD{\
return ^ (RPTYPE t, NSUInteger i){\
[(UISegmentedControl *)self.view METHOD:t forSegmentAtIndex:i];\
return self;\
};\
}\

@implementation RnpUISegmentedControlChain

RPCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(momentary, BOOL)
RPCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(apportionsSegmentWidthsByContent, BOOL)

- (RnpUISegmentedControlChain * _Nonnull (^)(void))removeAllSegments{
    return ^ (){
        [(UISegmentedControl *)self.view removeAllSegments];
        return self;
    };
}
RPCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(NSString * , setTitle)
RPCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(UIImage * , setImage)
RPCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(CGFloat , setWidth)
RPCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(CGSize, setContentOffset)
RPCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(BOOL , setEnabled)
RPCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(selectedSegmentIndex, NSInteger)

- (RnpUISegmentedControlChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState, UIBarMetrics))setBackgroundImage{
    return ^ (UIImage * _Nonnull a , UIControlState b, UIBarMetrics c){
        [(UISegmentedControl *)self.view setBackgroundImage:a forState:b barMetrics:c];
        return self;
    };
}

- (RnpUISegmentedControlChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState, UIControlState, UIBarMetrics))setDividerImage{
    return ^ (UIImage * _Nonnull a , UIControlState b, UIControlState b1, UIBarMetrics c){
        [(UISegmentedControl *)self.view setDividerImage:a forLeftSegmentState:b rightSegmentState:b1 barMetrics:c];
        return self;
    };
}

- (RnpUISegmentedControlChain * _Nonnull (^)(NSDictionary<NSAttributedStringKey,id> * _Nonnull, UIControlState))setTitleTextAttributes{
    return ^ (NSDictionary<NSAttributedStringKey,id> * _Nonnull a, UIControlState b){
        [(UISegmentedControl *)self.view setTitleTextAttributes:a forState:b];
        return self;
    };
}


- (RnpUISegmentedControlChain * _Nonnull (^)(UIOffset, UISegmentedControlSegment, UIBarMetrics))setContentPositionAdjustment{
    return ^ (UIOffset a, UISegmentedControlSegment b, UIBarMetrics c){
        [(UISegmentedControl *)self.view setContentPositionAdjustment:a forSegmentType:b barMetrics:c];
        return self;
    };
}


@end
RPCATEGORY_VIEW_IMPLEMENTATION(UISegmentedControl, RnpUISegmentedControlChain)
#undef RPCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION
#undef RPCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION
