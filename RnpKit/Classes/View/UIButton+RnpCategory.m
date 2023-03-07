//
//  UIButton+RnpCategory.m
//  RnpKit
//
//  Created by yangtianyan on 2023/3/7.
//

#import "UIButton+RnpCategory.h"
#import <objc/runtime.h>


void rnpReplaceInstanceMethods(Class className ,SEL newSEL ,SEL origSEL){
    Method orig = class_getInstanceMethod(className, origSEL);
    Method new = class_getInstanceMethod(className, newSEL);
    if(class_addMethod(className, origSEL, method_getImplementation(new), method_getTypeEncoding(new)))
    {
        class_replaceMethod(className, newSEL, method_getImplementation(orig), method_getTypeEncoding(orig));
    }else {
        method_exchangeImplementations(orig, new);
    }
}
static NSString * kBGNormal = @"RNP_BG_NORMAL";
static NSString * kBGHighlighted = @"RNP_BG_HIGHLIGHTED";
static NSString * kBGSelected = @"RNP_BG_SELECTED";
static NSString * kBGDisabled = @"RNP_BG_DISABLED";
#define rnp_bg_state(s) [NSString stringWithFormat:@"rnp_bg_state_%d", (int)s]

@interface UIButton()

@property (nonatomic, strong) NSMutableDictionary * rnpPropertys;

@end
@implementation UIButton (RnpCategory)

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        rnpReplaceInstanceMethods([UIButton class], NSSelectorFromString(@"setRNPHighlighted:"), NSSelectorFromString(@"setHighlighted:"));
        rnpReplaceInstanceMethods([UIButton class], NSSelectorFromString(@"setRNPSelected:"), NSSelectorFromString(@"setSelected:"));
        rnpReplaceInstanceMethods([UIButton class], NSSelectorFromString(@"setRNPEnabled:"), NSSelectorFromString(@"setEnabled:"));
    });
}

- (void)setRNPHighlighted:(BOOL)highlighted{
    [self setRNPHighlighted:highlighted];
    [self setColor];
}

- (void)setRNPSelected:(BOOL)selected{
    [self setRNPSelected:selected];
    [self setColor];
}

- (void)setRNPEnabled:(BOOL)enabled{
    [self setRNPEnabled:enabled];
    [self setColor];
}

- (NSMutableDictionary*)rnpPropertys{
    NSMutableDictionary *_rnpPropertys = objc_getAssociatedObject(self, @selector(rnpPropertys));
    if (!_rnpPropertys) {
        _rnpPropertys = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, @selector(rnpPropertys), _rnpPropertys, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return _rnpPropertys;
}

- (void)setColor{
    super.backgroundColor = [self getColor:self.state];
}

- (UIColor *)getColor:(UIControlState)state{
    UIColor *color = self.rnpPropertys[rnp_bg_state(state)];
    if (!color) {
        color = self.rnpPropertys[rnp_bg_state(UIControlStateNormal)];
        if (!color) {
            color = self.backgroundColor ? self.backgroundColor : [UIColor clearColor];
            [self.rnpPropertys setObject:color forKey:rnp_bg_state(UIControlStateNormal)];
        }
    }
    return color;
}

#pragma mark -- Public
- (void)rnp_setBackgroundColor:(UIColor *)color forState:(UIControlState)state{
    [self.rnpPropertys setObject:color forKey:rnp_bg_state(state)];
    [self setColor];
}
@end
