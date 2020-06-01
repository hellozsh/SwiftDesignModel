//
//  Mark.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 29/5/2020.
//  Copyright © 2020 周素华. All rights reserved.
//
 
/*
如何表现涂鸦？？
用户可以画点和线条,线条又包含多个点。如果用一个数组来表示一条线段的话，一个点就是一个值的数组，这样会浪费内存，使用和解析时也需要进行很多类型检查

组合模式:
可以使用树来把线条与点这样的复杂对象关系组织与局限于一处。这种设计叫做组合模式
*/

import Foundation
import UIKit

protocol Mark {
    
    //  读写属性，并不是说是计算属性,实现可以存储可以计算
    var color: UIColor { get set }
    var size: CGFloat { get set }
    var location: CGPoint { get set }

    //  只读属性，必须用var，因为如果实现是计算属性，计算里可能返回的值是运行时才能确定的，就不能用let
    var count: Int { get }
    var lastChild: Mark? { get }

    
    /// 将其他Mark对象加为自己的子节点，形成组合体
    ///
    /// - Parameter mark: Mark对象
    ///
    func addMark(mark: Mark) -> Void;
     
    /// 移除子节点
    ///
    /// - Parameter mark: Mark对象
    ///
    func removeMark(mark: Mark) -> Void;
    
    /// 根据序号返回特定子节点
    ///
    /// - Parameter index: 序号
    /// - Returns : Mark对象
    ///
    func childMarkAtIndex(index: Int) -> Mark?;
    
    /// 绘图
    ///
    /// - Parameter context: 上下文
    ///
    func drawWithContext(context: CGContext);
    
}

//extension Mark {
//
//    var color: UIColor { get { UIColor.white } set { }}
//    var size: CGFloat { get { 0 } set { } }
//    var location: CGPoint { get { CGPoint.zero } set { }}
//
//    var count: Int { get { 0 } }
//    var lastChild: Mark? { get { nil } }
//
//    func addMark(mark: Mark) -> Void {
//
//    }
//
//    func removeMark(mark: Mark) -> Void {
//
//
//    }
//
//    func childMarkAtIndex(index: Int) -> Mark? {
//
//        return nil
//    }
//}
