/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2018 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiMaterialRaisedButtonProxy.h"
#import "TiMaterialRaisedButton.h"
#import "TiUtils.h"

@implementation TiMaterialRaisedButtonProxy

- (void)setTitle:(id)title
{
  ENSURE_TYPE(title, NSString);
  [[(TiMaterialRaisedButton *)[self view] raisedButton] setTitle:title];
}

- (void)setBackgroundColor:(id)backgroundColor
{
  ENSURE_TYPE(backgroundColor, NSString);
  
  [[(TiMaterialRaisedButton *)[self view] raisedButton] setBackgroundColor:[TiUtils colorValue:backgroundColor].color];
}

- (void)setPulseColor:(id)backgroundColor
{
  ENSURE_TYPE(backgroundColor, NSString);
  
  [[(TiMaterialRaisedButton *)[self view] raisedButton] setPulseColor:[TiUtils colorValue:backgroundColor].color];
}

- (void)setColor:(id)backgroundColor
{
  ENSURE_TYPE(backgroundColor, NSString);
  
  [[(TiMaterialRaisedButton *)[self view] raisedButton] setTitleColor:[TiUtils colorValue:backgroundColor].color];
}

- (void)setSelectedColor:(id)backgroundColor
{
  ENSURE_TYPE(backgroundColor, NSString);
  
  [[(TiMaterialRaisedButton *)[self view] raisedButton] setSelectedTitleColor:[TiUtils colorValue:backgroundColor].color];
}

- (void)setImage:(id)image
{
  ENSURE_TYPE(image, NSString);
  
  [[(TiMaterialRaisedButton *)[self view] raisedButton] setImage:[TiUtils image:image proxy:self]];
}

@end
