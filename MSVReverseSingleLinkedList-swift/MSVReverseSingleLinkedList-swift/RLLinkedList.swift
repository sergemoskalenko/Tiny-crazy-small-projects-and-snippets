//
//  RLLinkedList.h
//  ReverseList
//
//  Created by Serge Moskalenko on 09.06.16.
//  Skype:camopu-ympo
//  mob: +380677629137
//  Copyright (c) 2016 Serge Moskalenko. All rights reserved.
//

import Foundation
class RLLinkedList: NSObject {
    var head: RLNode? = nil
    weak var tail: RLNode?
    
    func addNode(node: RLNode) {
        if self.tail == nil {
            self.head = node
        }
        else {
            self.tail!.next = node
        }
        self.tail = node
    }
    
    func reverse() {
        let newTail: RLNode = self.head!
        self.head = self.reverseNode(self.head)
        self.tail = newTail
    }
    
    func customDescription() -> String {
        var result: String = ""
        var node: RLNode? = self.head
        while true {
            result += "\(node!.data) "
            node = node!.next
            if node == nil {
                break
            }
        }
        return result
    }
    
    override var description: String {
        return customDescription()
    }
    
    func reverseNode(root: RLNode?) -> RLNode {
        var newRoot: RLNode? = nil
        var rootIn: RLNode? = root
        while rootIn != nil {
            let next: RLNode? = rootIn!.next
            rootIn!.next = newRoot
            newRoot = rootIn
            rootIn = next
        }
        return newRoot!
    }
}
