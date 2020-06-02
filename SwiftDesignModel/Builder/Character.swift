//
//  Character.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

/*
 Character的实现仅仅是定义了一个init方法和几个属性的同步
 Character的实例不知道如何把自己构建成有意义的角色，所以才需要CharacterBUilder基于先前定义的特征关心下，构建有意义的角色
 
 */
class Character {
     
    var protection: CGFloat = 1.0
    var power: CGFloat = 1.0
    var strength: CGFloat = 1.0
    var stamina: CGFloat = 1.0
    var intelligence: CGFloat = 1.0
    var agility: CGFloat = 1.0
    var aggressiveness: CGFloat = 1.0
}
