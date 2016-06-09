//
//  RLLinkedList.m
//  ReverseList
//
//  Created by Serge Moskalenko on 09.06.16.
//  Skype:camopu-ympo
//  mob: +380677629137
//  Copyright (c) 2016 Serge Moskalenko. All rights reserved.
//

#import "RLLinkedList.h"

@implementation RLLinkedList


- (void)addNode:(RLNode* )node
{
    if (self.tail == nil)
        self.head = node;
    else
        self.tail.next = node;

    self.tail = node;
}

- (void)reverse
{
    RLNode* newTail = self.head;
    self.head = [self reverseNode:self.head];
    self.tail = newTail;
}

-(RLNode*)reverseNode:(RLNode*) root
{
    RLNode* newRoot = nil;
    while (root) {
        RLNode* next = root.next;
        root.next = newRoot;
        newRoot = root;
        root = next;
    }
    return newRoot;
}

- (NSString *)description
{
    NSMutableString* result = [NSMutableString string];
    RLNode* node = self.head;
    while (1)
    {
        [result appendFormat:@"%ld ", (long)node.data];
        node = node.next;
        if (node == nil)
            break;
    }
    
    return result;
}

@end
