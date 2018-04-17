/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2018 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiMaterialTextFieldProxy.h"
#import "TiMaterialTextField.h"
#import "TiUtils.h"

@implementation TiMaterialTextFieldProxy

- (void)setHintText:(id)hintText
{
  ENSURE_TYPE_OR_NIL(hintText, NSString);
  [[(TiMaterialTextField *)[self view] textField] setPlaceholder:hintText];
}

- (void)setHintTextColor:(id)hintTextColor
{
  ENSURE_TYPE_OR_NIL(hintTextColor, NSString);
  [[(TiMaterialTextField *)[self view] textField] setPlaceholderNormalColor:[TiUtils colorValue:hintTextColor].color];
}

- (void)setValue:(id)value
{
  ENSURE_TYPE_OR_NIL(value, NSString);
  [[(TiMaterialTextField *)[self view] textField] setText:value];
}

- (void)setFont:(id)font
{
  [[(TiMaterialTextField *)[self view] textField] setFont:[TiUtils fontValue:font].font];
}

// Implement more here!

@end
