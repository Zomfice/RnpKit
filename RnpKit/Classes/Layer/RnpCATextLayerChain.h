//
//  RnpCATextLayerChain.h
//  RnpKit
//
//  Created by Zomfice on 2019/8/2.
//

#import "RnpBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class RnpCATextLayerChain;
@interface RnpCATextLayerChain : RnpBaseLayerChain<RnpCATextLayerChain*>
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ string) (id string);
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ font) (CFTypeRef font);
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ fontSize) (CGFloat fontSize);
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ foregroundColor) (CGColorRef foregroundColor);
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ wrapped) (BOOL wrapped);
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ truncationMode) (CATextLayerTruncationMode truncationMode);
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ alignmentMode) (CATextLayerAlignmentMode alignmentMode);
RPCATEGORY_CHAIN_PROPERTY RnpCATextLayerChain * (^ allowsFontSubpixelQuantization) (BOOL allowsFontSubpixelQuantization);
@end
RPCreateLayer(CATextLayer)
RPCATEGORY_EXINTERFACE(CATextLayer, RnpCATextLayerChain)
NS_ASSUME_NONNULL_END
