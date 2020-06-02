//
//  CanvasViewGenerator.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

/*
  工厂方法(虚构造器):
    各种具体工厂重载其抽象工厂父类中定义的工厂方法，并用这个重载的工厂方法创建自己的产品(对象)
    定义创建对象的接口，让子类决定实例化哪一个类
   适用情况:
     一个类无法预期需要生成哪个类的对象，想让其子类来指定所生成的对象
   优点:
    工厂方法可以让客户程序可以要求由工厂方法创建的对象拥有一组共同的行为，所以往类层次结构中引入新的具体产品并不需要修改客户端代码，因为返回的任何具体对象的接口就跟客户端一直在用的从前的接口相同
     让客户端使用最上层的类，以消除耦合
 
  抽象工厂:
    提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类
 
     抽象工厂                                   工厂方法
   通过对象组合创建抽象产品                 通过类继承创建抽象产品
   创建多系列产品                             创建一种产品
   必须修改父类的接口才能支持新的产品     子类化创建者并重载工厂方法以创建新产品
 */

/*
-------------工厂模式：--------------------------------------------------------------
 
        factory                          CanvaView
        /     \                          /     \
       /       \                        /       \
      /         \                      /         \
 paperFactory  clothFactory        paperView    clothView
 
 
-------------抽象工厂模式--------------------------------------------------------------
 
        factory                               View
         /     \                          /     \       \
        /       \                        /       \       \
       /         \                      /         \       \
 AcmeFactory  SierraFactory           UIView   UIBUtton   UIToolbar
                                      /   \     /   \       /   \
                                     /     \   /     \     /     \
                                    /       \  ~     ~    /       \
                                AcmeView SierraView   AcmeToolbar  SierraToolbar
 */


import Foundation
import UIKit

class CanvasViewGenerator: NSObject {
    
    func canvasView(with frame: CGRect) -> CanvasView {
        
        return CanvasView(frame: frame)
    }
}

