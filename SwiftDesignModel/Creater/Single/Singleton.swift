//
//  Singleton.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 3/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation

class Singleton {
    
    static let shared = Singleton()
    private init() {
        
    }
}

let singleton = Singleton.shared

