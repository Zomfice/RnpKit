//
//  RnpUISliderChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUISliderChain;
@interface RnpUISliderChain : RnpBaseControlChain<RnpUISliderChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ value) (float value);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ minimumValue) (float minimumValue);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ maximumValue) (float maximumValue);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ minimumValueImage) (UIImage * minimumValueImage);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ maximumValueImage) (UIImage * maximumValueImage);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ continuous) (BOOL continuous);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ minimumTrackTintColor) (UIColor * minimumTrackTintColor);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ maximumTrackTintColor) ( UIColor *maximumTrackTintColor);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ thumbTintColor) (UIColor * thumbTintColor);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ setThumbImage) (UIImage *image,UIControlState status);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ setMinimumTrackImage) (UIImage *image,UIControlState status);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ setMaximumTrackImage) (UIImage *image,UIControlState status);
RPCATEGORY_CHAIN_PROPERTY RnpUISliderChain * (^ setValueAnimated) (float value, BOOL animated);
@end
RPCreate(UISlider)
RPCATEGORY_EXINTERFACE(UISlider, RnpUISliderChain)
NS_ASSUME_NONNULL_END
