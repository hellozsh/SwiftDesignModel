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
    
    override func drawWithContext(context: CGContext) {
        
        let x = self.location.x
        let y = self.location.y
        let frameSize = self.size
        let frame = CGRect(x: x-frameSize/2.0, y: y-frameSize/2.0, width: frameSize, height: frameSize)
         
        context.setFillColor(self.color.cgColor)
        context.fillEllipse(in: frame)
    }
}
