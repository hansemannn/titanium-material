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
    [_button addTarget:self action:@selector(handleTap) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_button];
  }

  return _button;
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
  [TiUtils setView:[self raisedButton] positionRect:bounds];
}

- (void)handleTap
{
  if ([[self proxy] _hasListeners:@"click"]) {
    [[self proxy] fireEvent:@"click"];
  }
}

@end
