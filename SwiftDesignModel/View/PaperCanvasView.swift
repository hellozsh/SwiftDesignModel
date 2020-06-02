//
//  PaperCanvasView.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class PaperCanvasView: CanvasView {
    
    override init(frame: CGRect) {

        super.init(frame: frame)
        let backView = UIImageView(image: UIImage(named: "paper"))
        self.addSubview(backView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
