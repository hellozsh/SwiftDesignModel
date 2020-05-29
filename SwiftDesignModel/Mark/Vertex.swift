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
    
    func drawWithContext(context: CGContext) {
        
        let x = self.location.x
        let y = self.location.y
         
        context.addLine(to: CGPoint(x: x, y: y))
    }
}
