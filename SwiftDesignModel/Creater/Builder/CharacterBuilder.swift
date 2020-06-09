//
//  CharacterBuilder.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

/*
 CharacterBuilder的实例有个目标Character的引用，该目标Character构建完成后将被返回给客户端
 */
class CharacterBuilder {
    
    private(set) var character: Character?
    
    func buildNewCharacter() -> CharacterBuilder {
         
        character = Character()
        return self
    }
    
    func buildStrength(value: CGFloat) -> CharacterBuilder {
        
        character?.strength = value
        return self
    }
    
    func buildStamina(value: CGFloat) -> CharacterBuilder {
        
        character?.stamina = value
        return self
    }
    
    func buildInteligence(value: CGFloat) -> CharacterBuilder {
        
        character?.intelligence = value
        return self
    }
    
    func buildAgility(value: CGFloat) -> CharacterBuilder {
        
        character?.agility = value
        return self
    }
    
    func buildAgressiveness(value: CGFloat) -> CharacterBuilder {
        
        character?.aggressiveness = value
        return self
    }
    
    
    
}
