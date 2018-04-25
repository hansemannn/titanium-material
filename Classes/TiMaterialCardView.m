//
//  TiMaterialCardView.m
//  titanium-material
//
//  Created by brian garcía on 20/4/18.
//

#import "TiMaterialCardView.h"

@implementation TiMaterialCardView

- (Card *)cardView
{
    if (_cardView == nil) {
        _cardView = [[Card alloc] initWithFrame:self.bounds];
        [_cardView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
        [self addSubview:_cardView];
    }

    return _cardView;
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [TiUtils setView:[self cardView] positionRect:bounds];
}

@end
