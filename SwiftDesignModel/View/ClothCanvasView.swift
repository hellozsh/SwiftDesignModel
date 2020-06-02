//
//  ClothCanvasView.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class ClothCanvasView: CanvasView {
    
    override init(frame: CGRect) {

        super.init(frame: frame)
        let backView = UIImageView(image: UIImage(named: "cloth"))
        self.addSubview(backView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
