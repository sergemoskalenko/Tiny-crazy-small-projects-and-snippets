//
//  Motions.h
//  MSVSimpleLeveliOS
//
//  Created by Serge Moskalenko on 21.09.16.
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>
#import <UIKit/UIKit.h>

@interface Motions : NSObject
@property (nonatomic, strong) CMMotionManager* motionManager;

- (void)runMotionManagerForLabel:(UILabel *)label;
- (void)stopMotionManager;

- (int)degForRotation:(double)rotation;
@end
