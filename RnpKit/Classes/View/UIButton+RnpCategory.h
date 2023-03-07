//
//  UIButton+RnpCategory.h
//  RnpKit
//
//  Created by yangtianyan on 2023/3/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (RnpCategory)
- (void)rnp_setBackgroundColor:(UIColor *)color forState:(UIControlState)state;
@end

NS_ASSUME_NONNULL_END
