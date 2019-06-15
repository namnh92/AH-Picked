//
//  GradientLayer.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

typealias GradientPoint = (x: CGPoint, y: CGPoint)

enum GradientDirection: Int {
    case leftToRight = 0
    case rightToLeft = 1
    case topToBottom = 2
    case bottomToTop = 3
    case topLeftToBottomRight = 4
    case bottomRightToTopLeft = 5
    case topRightToBottomLeft = 6
    case bottomLeftToTopRight = 7
    
    var value: Int { return rawValue }
    
    func draw() -> GradientPoint {
        switch self {
        case .leftToRight:
            return (x: CGPoint(x: 0, y: 0.5), y: CGPoint(x: 1, y: 0.5))
        case .rightToLeft:
            return (x: CGPoint(x: 1, y: 0.5), y: CGPoint(x: 0, y: 0.5))
        case .topToBottom:
            return (x: CGPoint(x: 0.5, y: 0), y: CGPoint(x: 0.5, y: 1))
        case .bottomToTop:
            return (x: CGPoint(x: 0.5, y: 1), y: CGPoint(x: 0.5, y: 0))
        case .topLeftToBottomRight:
            return (x: CGPoint(x: 0, y: 0), y: CGPoint(x: 1, y: 1))
        case .bottomRightToTopLeft:
            return (x: CGPoint(x: 1, y: 1), y: CGPoint(x: 0, y: 0))
        case .topRightToBottomLeft:
            return (x: CGPoint(x: 1, y: 0), y: CGPoint(x: 0, y: 1))
        case .bottomLeftToTopRight:
            return (x: CGPoint(x: 0, y: 1), y: CGPoint(x: 1, y: 0))
        }
    }
}

class GradientLayer: CAGradientLayer {
    
    // MARK: - Init
    convenience init(startColor: UIColor, endColor: UIColor, direction: GradientDirection) {
        self.init()
        
        // Update points
        startPoint = direction.draw().x
        endPoint = direction.draw().y
        
        // Update color
        colors = [startColor.cgColor, endColor.cgColor]
    }
}
