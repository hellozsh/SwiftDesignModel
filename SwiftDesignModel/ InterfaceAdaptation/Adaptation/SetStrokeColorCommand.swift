//
//  SetStrokeColorCommand.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 9/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class SetStrokeColorCommand: Command {
    
    var delegate: SetStrokeColorCommandDelegate?
    
    override func execute() {
        
        var redValue: CGFloat = 0.0
        var greenValue: CGFloat = 0.0
        var blueValue: CGFloat = 0.0
         
         // 从委托取得RGB值
        delegate?.requestColor(command: self, red: &redValue, green: &greenValue, blue: &blueValue)
        
        // 根据RGB值创建一个颜色对象
        let color = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
         
        // 把值赋值给当前CoordinatingViewController
        let coordinator =  CoordinatingViewController.sharedInstance
        let controller = coordinator.canvasViewController
        controller?.strokeColor = color
        
        // 转发更新成功消息
        delegate?.finishColorUpdate(command: self, color: color)
        
    }
}
