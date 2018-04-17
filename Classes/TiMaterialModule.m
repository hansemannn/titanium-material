/**
 * titanium-material
 *
 * Created by Hans Knoechel
 * Copyright (c) 2018 Hans Knoechel. All rights reserved.
 */

#import "TiMaterialModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiMaterialModule

#pragma mark Internal

- (id)moduleGUID
{
  return @"1a6f07fe-539a-4de4-a299-e66e1d0cca09";
}

- (NSString *)moduleId
{
  return @"ti.material";
}

#pragma mark Lifecycle

- (void)startup
{
  [super startup];
  DebugLog(@"[DEBUG] %@ loaded", self);
}

@end
