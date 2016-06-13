//
//  AZUpperTest.m
//  2_3_problem
//
//  Created by Sergey Moskalenko on 13.06.16.
//  Copyright (c) 2016 Home. All rights reserved.
//

#import "AZUpperTest.h"

@implementation AZUpperTest


- (void)test
{
    [self testForcString:NULL];
    [self testForcString:"01010"];
    [self testForcString:"zsssA"];
    [self testForcString:"Assss"];
    [self testForcString:"ZZZaaaa"];
    [self testForcString:"ZZZaaaTTT"];
    [self testForcString:"aaTTTmmm"];
    [self testForcString:"FFjjjjsssEEE"];
    [self testForcString:""];
    [self testForcString:""];
    [self testForcString:""];
    [self testForcString:""];
    [self testForcString:""];
}

- (void)testForcString:(char *)cString
{
    if ([self isStartEndWithAZ:cString])
        NSLog(@"%s - true", cString);
    else
        NSLog(@"%s - false", cString);

}

// Objective-C
- (BOOL)isStartEndWithAZ:(char *)cString
{
    BOOL result = NO;
    
    if (cString != NULL)
    {
        int len = strlen(cString);
        if ( len != 0)
        {
            char startChar = cString[0];
            char endChar = cString[len - 1];
            
            result = ((startChar >= 'A') && (startChar <= 'Z') && (endChar >= 'A') && (endChar <= 'Z'));
        }
    }
    return result;
}


@end
