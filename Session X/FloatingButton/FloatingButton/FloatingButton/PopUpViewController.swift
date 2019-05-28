//
//  PopUpViewController.swift
//  FloatingButton
//
//  Created by Yi JIANG on 28/5/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    var screenshotImage: UIImage?
    
    @IBOutlet var screenshotImageView: UIImageView! {
        didSet{
            screenshotImageView.image = screenshotImage
        }
    }
    
    
    @IBAction func dismissButtonTouchUpInside(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
            
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
