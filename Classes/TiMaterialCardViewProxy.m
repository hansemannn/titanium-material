//
//  TiMaterialCardViewProxy.m
//  titanium-material
//
//  Created by brian garcía on 20/4/18.
//

#import "TiMaterialCardViewProxy.h"
#import "TiMaterialCardView.h"
#import "TiUtils.h"

@implementation TiMaterialCardViewProxy


- (void)setContentView:(id)viewProxy
{
    ENSURE_TYPE(viewProxy, TiViewProxy);
    [[(TiMaterialCardView *)[self view] cardView] setContentView:[viewProxy view]];
}

@end
