//
//  Entity.swift
//  iOS-Tower-Defense
//
//  Created by Noah Huppert on 12/17/15.
//  Copyright © 2015 Noah Huppert. All rights reserved.
//

import Foundation
import SpriteKit

class Entity {
    var size: Vector2
    var position: Vector2
    var rotation: Float
    
    private var spritePath: String
    
    private var node: SKSpriteNode?
    
    init(size: Vector2, position: Vector2, rotation: Float, spritePath: String) {
        self.size = size
        self.position = position
        self.rotation = rotation
        self.spritePath = spritePath
    }
    
    func getSKNode() -> SKSpriteNode {
        if node == nil {
            node? = SKSpriteNode(imageNamed: spritePath)
        }
        
        node!.size = size.toCGSize()
        node!.position = position.toCGPoint()
        node!.zRotation = CGFloat(rotation * Float(M_PI / 180))
        
        return node!
    }
}