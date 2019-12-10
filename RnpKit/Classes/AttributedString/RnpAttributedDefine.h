//
//  RnpAttributedDefine.h
//  RnpKit
//
//  Created by user on 2019/12/9.
//

#import <objc/runtime.h>


#define RPCATEGORY_ATTRIBUTED_IMPLEMENTATION(RNPClass, modelType) \
@implementation RNPClass (EXT)\
\
- (modelType *)rnp{\
    id __rnp = objc_getAssociatedObject(self, "rnp");\
    if(!__rnp){\
        __rnp = [[modelType alloc] initWithAttributedString:self];\
        objc_setAssociatedObject (self, "rnp", __rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );\
    }\
    return __rnp;\
}\
- (void)setRnp:(modelType *)rnp{\
    objc_setAssociatedObject (self, "rnp", rnp, OBJC_ASSOCIATION_RETAIN_NONATOMIC );\
}\
\
@end
