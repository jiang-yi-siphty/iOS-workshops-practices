//
//  AppFlowRouter.swift
//  FloatingButton
//
//  Created by Yi JIANG on 28/5/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import Foundation
import UIKit

struct AppFlowRouter {
    
    static weak var topmostViewController: UIViewController? {
        var topmostViewController = UIApplication.shared.keyWindow?.rootViewController
        while topmostViewController != nil {
            if let presentedViewController = topmostViewController?.presentedViewController {
                topmostViewController = presentedViewController
            } else {
                return topmostViewController
            }
        }
        return nil
    }
    
    static func initFloatingButtonView() {
        guard let window = UIApplication.shared.keyWindow, 
            !(window.subviews.contains{return $0 is FloatingButton})  
            else { return }
        let button = FloatingButton(type: .custom)
        button.prepare()
        window.addSubview(button)
    }
}
