//
//  RnpUIDatePickerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"
NS_ASSUME_NONNULL_BEGIN
@class RnpUIDatePickerChain;
@interface RnpUIDatePickerChain : RnpBaseControlChain<RnpUIDatePickerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ datePickerMode) (UIDatePickerMode datePickerMode);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ locale) (NSLocale* locale);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ calendar) (NSCalendar* calendar);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ timeZone) (NSTimeZone* timeZone);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ date) (NSDate * date);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ minimumDate) (NSDate * minimumDate);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ maximumDate) (NSDate * maximumDate);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ countDownDuration) (NSTimeInterval countDownDuration);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ minuteInterval) (NSInteger minuteInterval);
RPCATEGORY_CHAIN_PROPERTY RnpUIDatePickerChain * (^ setDateWithAnimated) (NSDate *date, BOOL animated);
@end
RPCreate(UIDatePicker)
RPCATEGORY_EXINTERFACE(UIDatePicker, RnpUIDatePickerChain)
NS_ASSUME_NONNULL_END
