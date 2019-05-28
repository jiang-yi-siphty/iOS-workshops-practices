//
//  UIImage+Extension.swift
//  FloatingButton
//
//  Created by Yi JIANG on 28/5/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//
import UIKit

extension UIImage {
    
    class var homeButton: UIImage {
        guard let image = UIImage(named: "homeButton") else {
            fatalError("Can't find homeButton image asset")
        }
        return image
    }
    
    
    static func takeScreenshot() -> UIImage? {
        var screenshotImage: UIImage?
        guard let layer = UIApplication.shared.keyWindow?.layer else { return nil }
        let scale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else {return nil}
        layer.render(in: context)
        screenshotImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return screenshotImage
    }
}
