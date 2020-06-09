//
//  SetStrokeColorCommandDelegate.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 9/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

protocol SetStrokeColorCommandDelegate {
    
    func requestColor(command: SetStrokeColorCommand, red: inout CGFloat, green: inout CGFloat, blue: inout CGFloat)
    
    func finishColorUpdate(command: SetStrokeColorCommand, color: UIColor)
}
