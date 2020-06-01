//
//  Dot.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 29/5/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class Dot: Vertex {
    
    var color: UIColor {
        set{ }
        get { UIColor.white }
    }
    var size: CGFloat {
        set { }
        get { 0.0 }
    }
             
    override func drawWithContext(context: CGContext) {
        
        let x = self.location.x
        let y = self.location.y
        let frameSize = self.size
        let frame = CGRect(x: x-frameSize/2.0, y: y-frameSize/2.0, width: frameSize, height: frameSize)
         
        context.setFillColor(self.color.cgColor)
        context.fillEllipse(in: frame)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        
        // 子类调用返回的时候需要是子类
        let ver = type(of: self).init(loaction: self.location)
        ver.color = self.color.mutableCopy() as! UIColor
        ver.size = self.size
        return ver;
    }
}
