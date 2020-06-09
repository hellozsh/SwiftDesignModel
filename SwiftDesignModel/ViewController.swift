//
//  ViewController.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 29/5/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // static表示是静态的(本质全局变量)，只会初始化一次，
    static var age: Int = {
       print(1)
       return 0
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 虽然调用多次，但是age里的print(1)只调用1次
//        print(Self.age) // 1 0
//        print(Self.age) // 0
//        print(Self.age)  // 0
//
//        print(age1) // 2 0
//        print(age1)  // 0
        
        
        var arr = [1,2,3,4]
        let arr2 = arr.map { $0 * 2 } // 遍历所有值*2
        print(arr2,arr)  // [2, 4, 6, 8] [1, 2, 3, 4]
        let arr3 = arr.filter{ $0 % 2 == 0 } // 过来能被2整除的数
        print(arr3,arr)  // [2, 4] [1, 2, 3, 4]
        
        // 可简写; let result = arr.reduce(0,+)
        let result = arr.reduce(0) { (result, element) -> Int in  // 这里的Int和0一定是同一个类型，
            return result + element
        }  // 先是0和第一个元素相加，得到的值给result，然后第二个元素和这个result相加，生成新result,以此类推。。。
        print(result)  // 10
        
        // map方法还可以这样使用
        func double(_ i: Int) -> Int { i*2 }
        print(arr.map(double))  // 因为arr里的元素是int类型，所以double的参数也需要是int，返回值可以任意
        
        // Array.init(repeating: $0, count: $0)指创建$0个单位数组，每个值是$0
       let arr5 = arr.map{ Array.init(repeating: $0, count: $0) } // [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]
        // 会把多个数组整合成一个数组
       let arr6 = arr.flatMap{ Array.init(repeating: $0, count: $0) } // [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
       print(arr5, arr6)
        
        let arr7 = ["123","test","-30"]
        let arr8 = arr7.map{ Int($0) }  // [Optional(123), nil, Optional(-30)]
        // 将数组里的原始转成Int，转不了的清空
        let arr9 = arr7.compactMap{ Int($0) } //[123, -30]
        print(arr8,arr9)
    }
    
    
}

struct Asyncs {
    public typealias Task = () -> Void
    
    public static func async(_ task: @escaping Task) {
         
        _async(task)
    }

    public static func async(_ task: @escaping Task,
                             _ mainTask: @escaping Task) {
          _async(task,mainTask)
    }

    public static func _async(_ task: @escaping Task,
                             _ mainTask: Task? = nil) {
        let item = DispatchWorkItem(block: task)
        DispatchQueue.global().async(execute: item)
        if let main = mainTask {
            item.notify(queue: DispatchQueue.main, execute: main) // 通知主队列执行任务main
        }
    }
    
    // 延迟方法
    public static func delay(_ seconds: Double,
                             _ block: @escaping Task) -> DispatchWorkItem {
        let item = DispatchWorkItem(block: block)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+seconds, execute: item)
        return item
    }
    
    // 异步延迟方法
    public static func asyncDelay(_ seconds: Double,
                             _ block: @escaping Task,
                             _ mainTask: Task? = nil) -> DispatchWorkItem {
        let item = DispatchWorkItem(block: block)
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now()+seconds, execute: item)
        if let main = mainTask {
            item.notify(queue: DispatchQueue.main, execute: main) // 通知主队列执行任务main
        }
        return item
    }
}

enum R {
    enum string: String {
       case add = "添加"
    }
    enum image: String {
       case logo   // 原始值，默认是"logo"
       case cancel
    }
    enum seque: String {
       case login_main // 同上
    }
}


var age1: Int = {
    print(2)
    return 0
}()
