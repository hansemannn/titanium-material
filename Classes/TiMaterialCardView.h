//
//  TiMaterialCardView.h
//  titanium-material
//
//  Created by brian garcía on 20/4/18.
//

#import "TiUIView.h"
#import <Material/Material-Swift.h>

@interface TiMaterialCardView : TiUIView {
    Card *_cardView;
}

- (Card *)cardView;

@end
