//
//  RLNode.h
//  ReverseList
//
//  Created by Serge Moskalenko on 09.06.16.
//  Skype:camopu-ympo
//  mob: +380677629137
//  Copyright (c) 2016 Serge Moskalenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RLNode : NSObject

@property (nonatomic, assign) NSInteger data;
@property (nonatomic, strong) RLNode* next;

@end
