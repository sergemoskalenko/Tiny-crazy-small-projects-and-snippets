//
//  ViewController.h
//  MSVReverseSingleLinkedList
//
//  Created by Serge Moskalenko on 09.06.16.
//  Skype:camopu-ympo
//  mob: +380677629137
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView? = nil

    @IBAction func reverseButton(sender: AnyObject) {
        self.list!.reverse()
        self.textView!.text = self.list!.description
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.list = RLLinkedList()
        for i in 1 ..< 101 {
            let node: RLNode = RLNode()
            node.data = i
            self.list!.addNode(node)
        }
        self.textView!.text = self.list!.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var list: RLLinkedList? = nil
}
