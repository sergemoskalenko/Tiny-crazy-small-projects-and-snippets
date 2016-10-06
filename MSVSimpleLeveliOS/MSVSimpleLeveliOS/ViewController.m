//
//  ViewController.m
//  MSVSimpleLeveliOS
//
//  Created by Serge Moskalenko on 20.09.16.
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//


#import "ViewController.h"
#import "Motions.h"

@interface ViewController ()
@property (nonatomic, strong) Motions* motions;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self runMotionManager];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self stopMotionManager];
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Motion

- (void)runMotionManager
{
    _motions = [Motions new];
    [_motions runMotionManagerForLabel:self.labelView];
}

- (void)stopMotionManager
{
    [_motions stopMotionManager];
}

@end
