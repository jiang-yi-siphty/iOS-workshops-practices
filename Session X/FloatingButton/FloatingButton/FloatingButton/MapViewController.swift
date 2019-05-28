//
//  ViewController.swift
//  FloatingButton
//
//  Created by Yi JIANG on 28/5/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    
    @IBAction func backButtonTouchUpInside(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
            
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Floating Button"
    }


}

