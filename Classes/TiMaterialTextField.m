/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2018 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiMaterialTextField.h"

@implementation TiMaterialTextField

- (TextField *)textField
{
  if (_textField == nil) {
    _textField = [[TextField alloc] initWithFrame:self.bounds];
    _textField.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:_textField];

  }

  [self addSubview:_textField];

  return _textField;
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
  [TiUtils setView:[self textField] positionRect:bounds];
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
  [_textField resignFirstResponder];
  return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
  [[self proxy] fireEvent:@"focus"];
}

- (void)textFieldDidEndEditing:(UITextField *)tf
{
  [[self proxy] fireEvent:@"blur"];
}

- (void)textFieldDidChange:(NSNotification *)notification
{
  [[self proxy] fireEvent:@"change" withObject:@{ @"value": _textField.text }];
}


@end
