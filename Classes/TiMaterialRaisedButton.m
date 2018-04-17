/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2018 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiMaterialRaisedButton.h"

@implementation TiMaterialRaisedButton

- (RaisedButton *)raisedButton
{
  if (_button == nil) {
    _button = [[RaisedButton alloc] initWithFrame:self.bounds];
    _button.title = @"Raised Button";
    _button.titleColor = [UIColor whiteColor];
    _button.backgroundColor = Color.blueColor;
  }

  [self addSubview:_button];

  return _button;
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
  [TiUtils setView:[self raisedButton] positionRect:bounds];
}

@end
