//
//  ViewController.h
//  MSVSimpleLeveliOS
//
//  Created by Serge Moskalenko on 20.09.16.
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var labelView: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.runMotionManager()
    }

    override func viewWillDisappear(animated: Bool) {
        self.stopMotionManager()
    }

    override func shouldAutorotate() -> Bool {
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//  - Motion -

    func runMotionManager() {
        self.motions = Motions()
        motions.runMotionManager(for: self.labelView)
    }

    func stopMotionManager() {
        motions.stopMotionManager()
    }

    var motions: Motions!
}
