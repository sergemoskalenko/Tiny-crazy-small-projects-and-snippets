//
//  DLItemList.h
//  2_3_problem
//
//  Created by Sergey Moskalenko on 13.06.16.
//  Copyright (c) 2016 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLItem.h"

@interface DLItemList : NSObject

@property (nonatomic, strong) DLItem* head;
@property (nonatomic, weak) DLItem* tail;

- (void)addItemWithData:(NSInteger)data;
- (void)process;
- (void)printRange;
- (void)printMissing;
- (void)printDuplicates;
- (void)printList;

@end
