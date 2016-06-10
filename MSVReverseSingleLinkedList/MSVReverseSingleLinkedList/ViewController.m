//
//  ViewController.m
//  MSVReverseSingleLinkedList
//
//  Created by Serge Moskalenko on 09.06.16.
//  Skype:camopu-ympo
//  mob: +380677629137
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//

#import "ViewController.h"
#import "RLNode.h"
#import "RLLinkedList.h"

@interface ViewController ()
@property (nonatomic, strong) RLLinkedList* list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.list = [RLLinkedList new];
    for (int i = 1; i < 101; i++)
    {
        RLNode* node = [RLNode new];
        node.data = i;
        
        [self.list addNode:node];
    }
    self.textView.text = self.list.description;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reverseButton:(id)sender {
    [self.list reverse];
    self.textView.text = self.list.description;
}
@end
