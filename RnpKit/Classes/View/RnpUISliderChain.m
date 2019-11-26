//
//  RnpUISliderChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUISliderChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUISliderChain *,UISlider)

#define RPCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(MehodName)\
- (RnpUISliderChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState))MehodName{\
return ^ (UIImage *image, UIControlState state){\
[(UISlider *)self.view MehodName:image forState:state];\
return self;\
};\
}
@implementation RnpUISliderChain

RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(value ,float);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(minimumValue ,float);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(maximumValue ,float);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(minimumValueImage ,UIImage *);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(maximumValueImage, UIImage *);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(continuous, BOOL);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(minimumTrackTintColor, UIColor *);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(maximumTrackTintColor ,UIColor *);
RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(thumbTintColor ,UIColor *);

- (RnpUISliderChain * _Nonnull (^)(float, BOOL))setValueAnimated{
    return ^ (float v, BOOL a){
        [(UISlider *)self.view setValue:v animated:a];
        return self;
    };
}


RPCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(setThumbImage)
RPCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(setMinimumTrackImage);
RPCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(setMaximumTrackImage);

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UISlider, RnpUISliderChain)
#undef RPCATEGORY_CHAIN_SLIDER_IMPLEMENTATION
#undef RPCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION
