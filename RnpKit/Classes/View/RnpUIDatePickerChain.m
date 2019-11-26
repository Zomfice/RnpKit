//
//  RnpUIDatePickerChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUIDatePickerChain.h"
#import <objc/runtime.h>
#define RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUIDatePickerChain *,UIDatePicker)
@implementation RnpUIDatePickerChain
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(datePickerMode, UIDatePickerMode)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(locale, NSLocale *)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(calendar, NSCalendar *)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(timeZone, NSTimeZone *)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(date, NSDate *)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(minimumDate, NSDate *)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(maximumDate, NSDate *)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(countDownDuration, NSTimeInterval)
RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(minuteInterval, NSInteger)

- (RnpUIDatePickerChain * _Nonnull (^)(NSDate * _Nonnull, BOOL))setDateWithAnimated{
    return ^ (NSDate *date, BOOL animated){
        [(UIDatePicker *)self.view setDate:date animated:animated];
        return self;
    };
}
@end
RPCATEGORY_VIEW_IMPLEMENTATION(UIDatePicker, RnpUIDatePickerChain)
#undef RPCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION
