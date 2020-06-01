//
//  Vertex.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 29/5/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class Vertex: Mark {
    
    
    
    var color: UIColor {
        set{
            
        }
        get {
            UIColor.white
        }
    }
    
    var size: CGFloat {
        set {
            
        }
        get {
            0.0
        }
    }
    
    var location: CGPoint
    
    var count: Int { 0 }
    
    var lastChild: Mark? { nil }
    
    func addMark(mark: Mark) { }
    
    func removeMark(mark: Mark) { }
    
    func childMarkAtIndex(index: Int) -> Mark? { nil }
    
    init(loaction: CGPoint) {
        
        self.location = loaction
    }
    
//    convenience init(loaction: CGPoint) {
//
//
//        self.init()
//
//    }
//
     
    func drawWithContext(context: CGContext) {
        
        let x = self.location.x
        let y = self.location.y
         
        context.addLine(to: CGPoint(x: x, y: y))
    }
}
