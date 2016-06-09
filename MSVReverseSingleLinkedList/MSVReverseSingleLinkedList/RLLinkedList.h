//
//  RLLinkedList.h
//  ReverseList
//
//  Created by Serge Moskalenko on 09.06.16.
//  Skype:camopu-ympo
//  mob: +380677629137
//  Copyright (c) 2016 Serge Moskalenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RLNode.h"

@interface RLLinkedList : NSObject

@property (nonatomic, strong) RLNode* head;
@property (nonatomic, weak) RLNode* tail;

- (void)addNode:(RLNode* )node;
- (void)reverse;
- (NSString *)description;

@end
