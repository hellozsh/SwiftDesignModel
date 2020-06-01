//
//  Stroke.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 29/5/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class Stroke: Mark {
    
    var color: UIColor = UIColor.white
    var size: CGFloat = 0
    
    var location: CGPoint {
        set {
            
        }
        get {
            if (children_.count > 0) {
                return children_[0].location
            }
            return CGPoint.zero
        }
    }
    
    var count: Int = 0
    var lastChild: Mark? = nil
    
    var children_ : Array<Mark> = []
    
    func addMark(mark: Mark) {
        children_.append(mark)
    }
    
    func removeMark(mark: Mark) {
       
        let removed = children_.remove(element: mark);
        if(removed) {
            
        } else {
            
            for obj in children_ {
                obj.removeMark(mark: mark)
            }
        }
    }
         
    
    /// 绘图
    ///
    ///  对于Stroke对象，它需要把上下文移至第一点，向每个子节点传递同样的drawWithContext消息和图形上下文，并设定颜色
    ///  然后以Quartz 2D函数结束整条线的绘制操作
    ///
    /// - Parameter context: 上下文
    ///
    func drawWithContext(context: CGContext) {
        
        context.move(to: CGPoint(x: self.location.x, y: self.location.y))
        
        for mark in children_ {
            mark.drawWithContext(context: context)
        }
        
        context.setLineWidth(self.size)
        context.setLineCap(CGLineCap.round)
        context.setStrokeColor(self.color.cgColor)
        context.strokePath()
    }
    
}
