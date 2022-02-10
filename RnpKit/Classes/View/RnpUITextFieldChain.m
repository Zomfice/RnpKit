//
//  RnpUITextFieldChain.m
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpUITextFieldChain.h"
#import <objc/runtime.h>

#define RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(RPMethod,RPParaType) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(RPMethod,RPParaType, RnpUITextFieldChain *,UITextField)
#define RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION_VERSION(RPMethod,RPParaType,VERSION) RPCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION_VERSION(RPMethod, RPParaType, RnpUITextFieldChain *, UITextField, VERSION)

@implementation RnpUITextFieldChain

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(text, NSString *);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(attributedText, NSAttributedString *);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(font, UIFont *);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(textColor, UIColor *);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(textAlignment, NSTextAlignment);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(borderStyle, UITextBorderStyle);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(defaultTextAttributes, NSDictionary *);

//RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(placeholder, NSString *);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(attributedPlaceholder, NSAttributedString *);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(keyboardType, UIKeyboardType);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(clearsOnBeginEditing, BOOL);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(minimumFontSize, CGFloat);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(delegate, id<UITextFieldDelegate>);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(background, UIImage *);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(disabledBackground, UIImage *);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(allowsEditingTextAttributes, BOOL);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(typingAttributes, NSDictionary *);

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(clearButtonMode, UITextFieldViewMode);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(leftView, UIView *);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(leftViewMode, UITextFieldViewMode);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(rightView, UIView *);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(rightViewMode, UITextFieldViewMode);
//RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(limitLength, NSUInteger);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(inputView, UIView *);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(inputAccessoryView, UIView *);

#pragma mark - UITextInputTraits -
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(autocapitalizationType, UITextAutocapitalizationType);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(autocorrectionType, UITextAutocorrectionType)
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(spellCheckingType, UITextSpellCheckingType)

RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(keyboardAppearance, UIKeyboardAppearance);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(returnKeyType, UIReturnKeyType);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(enablesReturnKeyAutomatically, BOOL);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(secureTextEntry, BOOL);
RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION_VERSION(textContentType, UITextContentType, 10.0);

- (RnpUITextFieldChain * _Nonnull (^)(NSString * _Nonnull))placeholder
{
    return ^(NSString * string){
       NSMutableAttributedString * att_str = [[self.view valueForKey:@"attributedPlaceholder"] mutableCopy];
        if (att_str == nil) {
            [self.view setValue:string forKeyPath:@"placeholder"];
        }else{
            [att_str replaceCharactersInRange:NSMakeRange(0, att_str.string.length) withString:string.length == 0 ? @"" : string];
            [self.view setValue:att_str forKeyPath:@"attributedPlaceholder"];
        }
        return self;
    };
}

- (RnpUITextFieldChain * _Nonnull (^)(UIFont * _Nonnull))placeholderFont{
    return ^(UIFont *font){
        if (font == nil) {
            return self;
        }
        NSMutableAttributedString * att_str = [self _attributedPlaceholder];
        [att_str addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, att_str.length)];
        [self.view setValue:att_str forKeyPath:@"attributedPlaceholder"];
        return self;
    };
}

- (RnpUITextFieldChain * _Nonnull (^)(UIColor * _Nonnull))placeholderColor{
    return ^(UIColor *color){
        if (color == nil) {
            return self;
        }
           NSMutableAttributedString * att_str = [self _attributedPlaceholder];
             [att_str addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, att_str.length)];
             [self.view setValue:att_str forKeyPath:@"attributedPlaceholder"];
        return self;
    };
}

- (NSMutableAttributedString *)_attributedPlaceholder{
    NSMutableAttributedString * att_str = [[self.view valueForKey:@"attributedPlaceholder"] mutableCopy];
     NSString * placeholder = [self.view valueForKey:@"placeholder"];
     if (att_str == nil) {
         att_str = [[NSMutableAttributedString alloc] initWithString:placeholder.length == 0 ? @" " : placeholder];
     }
    return att_str;
}

@end
RPCATEGORY_VIEW_IMPLEMENTATION(UITextField, RnpUITextFieldChain)
#undef RPCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION
