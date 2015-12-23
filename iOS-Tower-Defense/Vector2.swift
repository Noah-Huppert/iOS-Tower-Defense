//
//  Vector2.swift
//  iOS-Tower-Defense
//
//  Created by Noah Huppert on 12/17/15.
//  Copyright © 2015 Noah Huppert. All rights reserved.
//

import Foundation
import SpriteKit

struct Vector2 {
    let x: Float
    let y: Float
    
    func toCGPoint() -> CGPoint {
        return CGPoint(x: CGFloat(x), y: CGFloat(y))
    }
    
    func toCGSize() -> CGSize {
        return CGSize(width: CGFloat(x), height: CGFloat(y))
    }
}