//
//  Motions.m
//  MSVSimpleLeveliOS
//
//  Created by Serge Moskalenko on 21.09.16.
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//

#import "Motions.h"

@implementation Motions

- (void)runMotionManagerForLabel:(UILabel *)label
{
    _motionManager = [CMMotionManager new];
    _motionManager.gyroUpdateInterval = 0.1;
    
    __weak UILabel * weakLabel = label;
    if (_motionManager.deviceMotionAvailable) {
        _motionManager.deviceMotionUpdateInterval = 0.01f;
        [_motionManager startDeviceMotionUpdatesToQueue:[NSOperationQueue mainQueue]
                                            withHandler:^(CMDeviceMotion *data, NSError *error) {
                                                double rotation = atan2(data.gravity.x, data.gravity.y) - M_PI;
                                                int deg = [self degForRotation:rotation];
                                                
                                                weakLabel.transform = CGAffineTransformMakeRotation(rotation);
                                                weakLabel.text = [NSString stringWithFormat:@"%d deg", deg];
                                            }];
    }
}

- (void)stopMotionManager
{
    [_motionManager stopGyroUpdates];
}

- (int)degForRotation:(double)rotation
{
    return 360 + 180 * rotation / M_PI;
}

@end
