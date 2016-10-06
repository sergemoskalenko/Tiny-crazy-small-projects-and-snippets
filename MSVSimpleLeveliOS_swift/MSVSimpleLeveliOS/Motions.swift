//
//  Motions.h
//  MSVSimpleLeveliOS
//
//  Created by Serge Moskalenko on 21.09.16.
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//
import Foundation
import CoreMotion
import UIKit
class Motions: NSObject {
    var motionManager: CMMotionManager!

    func runMotionManager(for label: UILabel) {
        self.motionManager = CMMotionManager()
        self.motionManager.gyroUpdateInterval = 0.1
        weak var weakLabel = label
        if motionManager.deviceMotionAvailable {
            self.motionManager.deviceMotionUpdateInterval = 0.01
            self.motionManager.startDeviceMotionUpdatesToQueue(NSOperationQueue.currentQueue()!, withHandler:{
                (data, error) in
                
                let rotation: Double = atan2(data!.gravity.x, data!.gravity.y) - M_PI
                let deg = self.deg(forRotation: rotation)
                weakLabel!.transform = CGAffineTransformMakeRotation(CGFloat(rotation))
                weakLabel!.text = "\(deg) deg"
            })
        }
    }

    func stopMotionManager() {
        motionManager.stopGyroUpdates()
    }

    func deg(forRotation rotation: Double) -> Int {
        return NSInteger(360 + 180 * rotation / M_PI)
    }
}
