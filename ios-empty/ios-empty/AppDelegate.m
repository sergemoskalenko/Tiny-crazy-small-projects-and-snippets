//
//  AppDelegate.m
//  ios-empty
//
//  Created by Serge Moskalenko on 13.06.12.
//  Copyright (c) 2012-2016 Serge Moskalenko. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate()

@property (strong, nonatomic) UITextField *textField;

@end

@implementation AppDelegate
@synthesize window;
@synthesize textField;
@synthesize alertString;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
 
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.backgroundColor = [UIColor colorWithRed:193.0/255 green:1.0 blue:241.0/255 alpha:1.0];
    button.frame = CGRectMake(0, 0, 200, 30);
    [button setTitle:@"Do It" forState:UIControlStateNormal];
    CGPoint centerPoint = self.window.center;
    centerPoint.y -= 30;
    button.center = centerPoint;
    [button addTarget:self action:@selector(doIt:) forControlEvents:UIControlEventTouchUpInside];
    button.tag = 777;
    [self.window addSubview:button];
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    self.textField.placeholder = @"enter your name";
    self.textField.backgroundColor = [UIColor colorWithWhite:224.0/255 alpha:1.0];
    centerPoint.y -= 40;
    self.textField.center = centerPoint;
    [self.window addSubview:self.textField];
    
    return YES;
}

- (void)doIt:(UIButton *)button
{
    [self.textField resignFirstResponder];
    self.alertString = self.textField.text;
}

- (void)setAlertString:(NSString *)alertStringNew
{
    NSArray* quotes = @[
                       @"God couldn't be everywhere, so he created mothers.",
                       @"Be not afraid of going slowly, be afraid only of standing still.",
                       @"Learn from yesterday, live for today, hope for tomorrow.",
                       @"I hear and I forget, I see and I remember. I do and I understand.",
                       @"In teaching others we teach ourselves.",
                       @"Men never remember, but women never forget.",
                       @"Once you have learned to love, You will have learned to live."
                      ];
    
    NSString* name = [alertStringNew stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if (name.length == 0)
        name = @"Incognito";
    NSString* quote = quotes[arc4random() % 7];
    NSString* message = [NSString stringWithFormat:@"Hi, %@!\n\n%@", name, quote];
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@""
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil];
    
    // shows alert to user
    [alert show];
    
    alertString = alertStringNew;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
