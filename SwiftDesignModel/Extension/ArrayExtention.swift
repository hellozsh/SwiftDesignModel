//
//  ArrayExtention.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 1/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation

extension Array {
 
    
    public mutating func remove (element: Element) -> Bool {
        
        for index in startIndex ..< endIndex {
            if(self[index] as AnyObject === element as AnyObject) {
                self.remove(at: index)
                return true;
            }
        }
        return false;
    }
}
