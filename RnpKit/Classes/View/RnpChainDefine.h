//
//  RnpChainDefine.h
//  RnpKit
//
//  Created by Zomfice on 2019/7/31.
//

#ifndef RnpChainDefine_h
#define RnpChainDefine_h

#import <UIKit/UIKit.h>

#define RPCreate(ViewClass)\
static inline ViewClass *ViewClass##New(void){\
return [ViewClass new];\
}

#define RPCreateLayer(ViewClass)\
static inline ViewClass *ViewClass##New(void){\
return [ViewClass layer];\
}

#define RPTansactionDisableActions(...)\
[CATransaction begin];\
[CATransaction setDisableActions:YES];\
__VA_ARGS__\
[CATransaction commit];

#define RPCATEGORY_CHAIN_PROPERTY @property (nonatomic, copy, readonly)

#define RPCATEGORY_STRONG_PROPERTY @property (nonatomic, strong, readonly)

#define RPCATEGORY_CHAIN_IMPLEMENTATION(RPMethod,RPParaType, RPProperty, RPModelType, RPPropertyClass)\
- (RPModelType  _Nonnull (^)(RPParaType))RPMethod{\
return ^ (RPParaType RPMethod){\
((RPPropertyClass *)self.RPProperty).RPMethod = RPMethod;\
return self;\
};\
}

#define RPCATEGORY_EXINTERFACE(RPClass, modelType)\
@interface RPClass(EXT)\
RPCATEGORY_CHAIN_PROPERTY modelType * rnp;\
@end


#endif /* RnpChainDefine_h */
