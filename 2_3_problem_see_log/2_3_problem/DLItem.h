//
//  DLItem.h
//  2_3_problem
//
//  Created by Sergey Moskalenko on 13.06.16.
//  Copyright (c) 2016 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLItem : NSObject

@property (nonatomic, strong) DLItem* next;
@property (nonatomic, assign) NSInteger data;
@property (nonatomic, assign) NSInteger counter;


@end
