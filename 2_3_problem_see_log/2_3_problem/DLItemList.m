//
//  DLItemList.m
//  2_3_problem
//
//  Created by Sergey Moskalenko on 13.06.16.
//  Copyright (c) 2016 Home. All rights reserved.
//

#import "DLItemList.h"

@interface DLItemList()
@property (nonatomic, strong) NSMutableString* missingNumbers;
@property (nonatomic, strong) NSMutableString* duplicateNumbers;
@end

@implementation DLItemList

- (void)addItemWithData:(NSInteger)data
{
    DLItem* itemNew = [DLItem new];
    itemNew.data = data;
    itemNew.counter = 1;
    
    if (self.head == nil)
    {
        self.head = itemNew;
        self.tail = itemNew;
        itemNew.next = nil;
        
        return;
    }
    
    DLItem* item = self.head;
    DLItem* itemPrev = nil;
    
    
    if (data == item.data)
    {
        item.counter++;
        return;
    }
    else if (data < item.data)
    {
        // insert before
        self.head = itemNew;
        itemNew.next = item;
        return;
    }   
    else 
    {
        // next item
        itemPrev = item;
        item = item.next;
        while (1) 
        {
            if (data == item.data)
            {
                item.counter++;
                break;
            }
            else if (data < item.data)
            {
                // insert before
                itemPrev.next = itemNew;
                itemNew.next = item;
                break;
            }   

            if (item.next == nil) // test for list end
            {
                item.next = itemNew;
                itemNew.next = nil;
                self.tail = itemNew;
                
                break;
            }
            else
            {
                // next item
                itemPrev = item;
                item = item.next;
            }
        }
    }
}

- (void)process
{
    self.missingNumbers = [NSMutableString string];
    self.duplicateNumbers = [NSMutableString string];    
    
    DLItem* item = self.head;
    DLItem* itemNext = nil;
    while (1) 
    {
        if (item.counter > 1)
        {
            [self.duplicateNumbers appendFormat:@"%d appears %d times\n", item.data, item.counter]; 
        }
        
        if (itemNext.data - item.data > 1)
        {
            for (NSInteger i = item.data + 1; i < itemNext.data; i++) 
            {
                [self.missingNumbers appendFormat:@"%d\n", i];
            }
        }
        
        item = item.next;
        if (item)
            itemNext = item.next;

        else
            break;
    }
}

- (void)printRange
{
    NSLog(@"Range is %d to %d\n\n", self.head.data, self.tail.data);
}

- (void)printMissing
{
    NSLog(@"Missing numbers:\n%@\n", self.missingNumbers);
}

- (void)printDuplicates
{
    NSLog(@"Duplicate numbers:\n%@\n", self.duplicateNumbers);    
}

- (void)printList
{
    DLItem* item = self.head;
    while(item)
    {
        NSLog(@"%d (%d)", item.data, item.counter);
        item = item.next;
    }
}

@end
