//
//  RnpUITextFieldChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUITextFieldChain;
@interface RnpUITextFieldChain : RnpBaseControlChain<RnpUITextFieldChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ text)(NSString *text);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ attributedText)(NSAttributedString *attributedText);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ font)(UIFont *font);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ textColor)(UIColor *textColor);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ textAlignment)(NSTextAlignment textAlignment);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ borderStyle)(UITextBorderStyle borderStyle);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ defaultTextAttributes)(NSDictionary *defaultTextAttributes);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ placeholder)(NSString *placeholder);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ attributedPlaceholder)(NSAttributedString *attributeRPlaceholder);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ clearsOnBeginEditing)(BOOL clearsOnBeginEditing);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ minimumFontSize)(CGFloat minimumFontSize);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ delegate)(id<UITextFieldDelegate> delegate);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ background)(UIImage *background);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ disabledBackground)(UIImage *disabledBackground);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ typingAttributes)(NSDictionary *typingAttributes);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ clearButtonMode)(UITextFieldViewMode clearButtonMode);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ leftView)(UIView *leftView);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ leftViewMode)(UITextFieldViewMode leftViewMode);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ rightView)(UIView *rightView);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ rightViewMode)(UITextFieldViewMode rightViewMode);

//RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ limitLength) (NSUInteger limitLength);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ inputView)(UIView *inputView);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ inputAccessoryView)(UIView *inputAccessoryView);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ placeholderFont)(UIFont *font);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ placeholderColor)(UIColor *color);

#pragma mark - UITextInputTraits -
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ autocapitalizationType)(UITextAutocapitalizationType autocapitalizationType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ autocorrectionType)(UITextAutocorrectionType autocorrectionType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ spellCheckingType)(UITextSpellCheckingType spellCheckingType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ keyboardType)(UIKeyboardType keyboardType);

RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ keyboardAppearance)(UIKeyboardAppearance keyboardAppearance);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ returnKeyType)(UIReturnKeyType returnKeyType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ enablesReturnKeyAutomatically)(BOOL enablesReturnKeyAutomatically);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ secureTextEntry)(BOOL secureTextEntry);
RPCATEGORY_CHAIN_PROPERTY RnpUITextFieldChain *(^ textContentType)(UITextContentType textContentType);
@end
RPCreate(UITextField)
RPCATEGORY_EXINTERFACE(UITextField, RnpUITextFieldChain)
NS_ASSUME_NONNULL_END
