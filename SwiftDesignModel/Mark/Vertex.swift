//
//  Vertex.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 29/5/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class Vertex: NSObject,Mark,NSCopying {
    
//    var color: UIColor {
//        set{
//            
//        }
//        get {
//            UIColor.white
//        }
//    }
//    
//    var size: CGFloat {
//        set {
//            
//        }
//        get {
//            0.0
//        }
//    }
    
    var location: CGPoint
    
//    var count: Int { 0 }
//
//    var lastChild: Mark? { nil }
//
//    func addMark(mark: Mark) { }
//
//    func removeMark(mark: Mark) { }
//
//    func childMarkAtIndex(index: Int) -> Mark? { nil }
    
    required init(loaction: CGPoint) {
        
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
    
    func copy(with zone: NSZone? = nil) -> Any {
        
        // 子类调用返回的时候需要是子类
        let ver = type(of: self).init(loaction: self.location)
        return ver;
    }
}
