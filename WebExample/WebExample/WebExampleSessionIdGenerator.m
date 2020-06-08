//
//  Copyright (C) 2016 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#define WEBEXAMPLE_SOMESESSIONID @"MyFixedSessionId"
/* #define WEBEXAMPLE_SOMESESSIONID nil */

#import "WebExampleSessionIdGenerator.h"

@implementation WebExampleSessionIdGenerator
- (NSString*)sessionIdGeneration
{
    NSString *uuid = [[NSUUID UUID] UUIDString];
    return [uuid stringByReplacingOccurrencesOfString:@"-" withString:@""];
}
@end
