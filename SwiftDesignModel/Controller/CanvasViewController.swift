//
//  CanvasViewController.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 29/5/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {

    var _canvasView: CanvasView?
    
    var strokeColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        loadCanvasView(with: CanvasViewGenerator())
    }
    
    func loadCanvasView(with generator: CanvasViewGenerator) {
        
        _canvasView?.removeFromSuperview()
        let aframe = CGRect(x: 0,y: 0,width: 320,height: 436)
        _canvasView = generator.canvasView(with: aframe)
        self.view.addSubview(_canvasView!)
    }
    
    
    
    
    
    
    /// 求和[概述]
    ///
    /// 将2个整数相加[更详细的描述]
    ///
    /// - Parameter v1: 第一个整数
    /// - Parameter v2: 第二个整数
    /// - Returns : 2个整数的和
    ///
    /// - Note:传入2个整数既可[批注]
    ///
    func sum(v1: Int, v2: Int) -> Int {
      v1+v2
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
