//
//  RnpUITextViewChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#import "RnpBaseScrollViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpUITextViewChain;
@interface RnpUITextViewChain : RnpBaseScrollViewChain<RnpUITextViewChain*>
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ delegate)(id<UITextViewDelegate> delegate);

RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ text)(NSString *text);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ font)(UIFont *font);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ textColor)(UIColor *textColor);

RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ textAlignment)(NSTextAlignment textAlignment);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ selectedRange)(NSRange numberOfLines);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ editable)(BOOL editable);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ selectable)(BOOL selectable);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ dataDetectorTypes)(UIDataDetectorTypes dataDetectorTypes);


RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ attributedText)(NSAttributedString *attributedText);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ typingAttributes)(NSDictionary *typingAttributes);

RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ clearsOnInsertion)(BOOL clearsOnInsertion);

RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ textContainerInset)(UIEdgeInsets textContainerInset);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ linkTextAttributes)(NSDictionary *linkTextAttributes);
#pragma mark - UITextInputTraits -
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ autocapitalizationType)(UITextAutocapitalizationType autocapitalizationType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ autocorrectionType)(UITextAutocorrectionType autocorrectionType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ spellCheckingType)(UITextSpellCheckingType spellCheckingType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ keyboardType)(UIKeyboardType keyboardType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ keyboardAppearance)(UIKeyboardAppearance keyboardAppearance);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ returnKeyType)(UIReturnKeyType returnKeyType);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ enablesReturnKeyAutomatically)(BOOL enablesReturnKeyAutomatically);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ secureTextEntry)(BOOL secureTextEntry);
RPCATEGORY_CHAIN_PROPERTY RnpUITextViewChain *(^ textContentType)(UITextContentType textContentType);
@end
RPCreate(UITextView)
RPCATEGORY_EXINTERFACE(UITextView, RnpUITextViewChain)
NS_ASSUME_NONNULL_END
