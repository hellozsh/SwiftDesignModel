//
//  ClothCanvasViewGenerator.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class ClothCanvasViewGenerator: CanvasViewGenerator {
    
    override func canvasView(with frame: CGRect) -> CanvasView {
        
       return ClothCanvasView(frame: frame)
    }
}
