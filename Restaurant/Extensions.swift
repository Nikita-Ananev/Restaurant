//
//  Extensions.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import UIKit
extension UIView {
    
//    func addShadow(shadowColor: UIColor, offSet: CGSize, opacity: Float, shadowRadius: CGFloat, cornerRadius: CGFloat, corners: UIRectCorner, fillColor: UIColor = .white) {
//
//        let shadowLayer = CAShapeLayer()
//        let size = CGSize(width: cornerRadius, height: cornerRadius)
//        let cgPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size).cgPath
//        shadowLayer.path = cgPath
//        shadowLayer.fillColor = fillColor.cgColor
//        shadowLayer.shadowColor = shadowColor.cgColor
//        shadowLayer.shadowPath = cgPath
//        shadowLayer.shadowOffset = offSet
//        shadowLayer.shadowOpacity = opacity
//        shadowLayer.shadowRadius = shadowRadius
//        self.layer.addSublayer(shadowLayer)
//    }
    func addCornerRadius(radius: CGFloat, borderWidth: CGFloat, borderColor: CGColor) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
    }
}

