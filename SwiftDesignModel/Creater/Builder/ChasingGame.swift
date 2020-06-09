//
//  ChasingGame.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation

/*
 生成器模式：
   将一个复杂对象的构建与它的表现分离，使得同样的构建过程可以创建不同的表现
 
  时序图
    aClient                                  aDirector          aConcreteBuilder
      |-ConcreateBuilder()-----------------------------------------------|
      |-Director(builder: aConcreteBuilder)-----|
      |-construct-------------------------------|-buildPartA--------------|
                                                |-buildPartB--------------|
                                                |-buildPartC--------------|
      |-getResult---------------------------------------------------------|
 */

/*
   使用
   let build = StandardCharacterBuilder()
   let game = ChasingGame()
   let enemyCharacter = game.createEnemy(builder: build)
   let playerCharacter = game.createPlayer(builder: build)
 
   思考：
     如果让aDirector从它的construct方法返回产品或getResult以某种方式在aDirector中实现，是否aClient可以不必知道aBuilder
    回答：
      那样的话，aDirector就变成了工厂，它的construct就变成了返回抽象产品的工厂方法。
      而且，aDirector将与锁支持的产品固定在一起，这降低了模式的可复用性
 */

class ChasingGame {
    
    func createPlayer(builder: CharacterBuilder) -> Character {
        
        _ = builder.buildNewCharacter()
                   .buildStrength(value: 50.0)
                   .buildStamina(value: 25)
                   .buildInteligence(value: 75)
                   .buildAgility(value: 65)
                   .buildAgressiveness(value: 35)
        
        return builder.character!
    }
    
    func createEnemy(builder: CharacterBuilder) -> Character {
        
        _ = builder.buildNewCharacter()
                   .buildStrength(value: 80)
                   .buildStamina(value: 65)
                   .buildInteligence(value: 35)
                   .buildAgility(value: 25)
                   .buildAgressiveness(value: 95)
        
        return builder.character!
    }
}
