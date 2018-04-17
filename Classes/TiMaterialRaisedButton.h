/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2018 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiUIView.h"
#import <Material/Material-Swift.h>

@interface TiMaterialRaisedButton : TiUIView {
  RaisedButton *_button;
}

- (RaisedButton *)raisedButton;

@end
