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
  [TiUtils setView:[viewProxy view] positionRect:[viewProxy view].bounds];
  
  CGRect frame = [viewProxy view].frame;
  [[(TiMaterialCardView *)[self view] cardView] setContentView:[viewProxy view]];
}

- (void)setBackgroundColor:(id)backgroundColor
{
  ENSURE_TYPE(backgroundColor, NSString);
  [[(TiMaterialCardView *)[self view] cardView] setBackgroundColor:[TiUtils colorValue:backgroundColor].color];
}

- (void)setCornerRadius:(id)cornerRadius
{
  ENSURE_TYPE(cornerRadius, NSNumber);
  [[(TiMaterialCardView *)[self view] cardView] setCornerRadius:[TiUtils floatValue:cornerRadius]];
}

- (void)setContentViewEdgeInsets:(id)contentViewEdgeInsets
{
  ENSURE_TYPE(contentViewEdgeInsets, NSDictionary);
  [[(TiMaterialCardView *)[self view] cardView] setContentViewEdgeInsets:[TiUtils contentInsets:contentViewEdgeInsets]];
}

@end
