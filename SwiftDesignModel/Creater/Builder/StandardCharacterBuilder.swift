//
//  StandardCharacterBuilder.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

/*
StandardCharacterBuilder是CharacterBuilder的子类，定义了生成具有各种相关特征的真正角色的逻辑
 
             防御      攻击
 力量         🔝       🔝
 耐力         🔝       🔝
 智力         🔝       ⬇️
 敏捷         🔝       ⬇️
 攻击力       ⬇️       🔝
*/
class StandardCharacterBuilder:CharacterBuilder {
    
    override func buildStrength(value: CGFloat) -> CharacterBuilder {
        
        character?.protection *= value
        character?.power *= value
        return super.buildStrength(value: value)
    }
    
    override func buildStamina(value: CGFloat) -> CharacterBuilder {
        
        character?.protection *= value
        character?.power *= value
        return super.buildStamina(value: value)
    }
    
    override func buildInteligence(value: CGFloat) -> CharacterBuilder {
        
        character?.protection *= value
        character?.power /= value
        return super.buildInteligence(value: value)
    }
    
    override func buildAgility(value: CGFloat) -> CharacterBuilder {
        
        character?.protection *= value
        character?.power /= value
        return super.buildAgility(value: value)
    }
    
    override func buildAgressiveness(value: CGFloat) -> CharacterBuilder {
        
        character?.protection /= value
        character?.power *= value
        return super.buildAgressiveness(value: value)
    }
    
}
