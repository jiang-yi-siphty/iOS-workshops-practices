//
//  FloatingButtonView.swift
//  FloatingButton
//
//  Created by Yi JIANG on 28/5/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import UIKit

class FloatingButton: UIButton {
    
    func prepare() {
        bounds = CGRect(x: 0, y: 0, width: 44, height: 44)  
        setImage(.homeButton, for: .normal)
        addTarget(self, action: #selector(buttonTouchUpInside), for: .touchUpInside)    
        let panner = UIPanGestureRecognizer(target: self, action: #selector(panDidFire(panner:)))
        addGestureRecognizer(panner)
        guard let window = UIApplication.shared.keyWindow else { return }  
        let rect = window.bounds.insetBy(dx: window.safeAreaInsets.left + bounds.width / 2, 
                                         dy: window.safeAreaInsets.top + bounds.height / 2)
        center = CGPoint(x: rect.minX, y: rect.maxY / 2)
    }
    
    @objc func buttonTouchUpInside() {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUpViewController") as? PopUpViewController
        {
            viewController.screenshotImage = UIImage.takeScreenshot()
            viewController.modalPresentationStyle = .overFullScreen
            AppFlowRouter.topmostViewController?.present(viewController, animated: true, completion: nil)
        }
    }
    
    @objc func panDidFire(panner: UIPanGestureRecognizer) {
        guard let window = UIApplication.shared.keyWindow else { return }
        let offset = panner.translation(in: window)
        panner.setTranslation(CGPoint.zero, in: window)
        var newCenter = center
        newCenter.x += offset.x
        newCenter.y += offset.y
        center = newCenter
        
        if panner.state == .ended || panner.state == .cancelled {
            UIView.animate(withDuration: 0.3) {
                self.snapButtonToSide()
            }
        }
    }
    
    private func snapButtonToSide() {
        guard let window = UIApplication.shared.keyWindow else { return }    
        let rect = window.bounds.insetBy(dx: window.safeAreaInsets.left + bounds.width / 2, 
                                         dy: window.safeAreaInsets.top + bounds.height / 2)

        if center.x > window.bounds.maxX / 2 {
            center = CGPoint(x: rect.maxX, y: center.y)
        } else {
            center = CGPoint(x: rect.minX, y: center.y)
        }
    }
}

