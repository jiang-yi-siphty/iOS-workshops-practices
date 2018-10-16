//
//  OtherViewController.swift
//  HelloUber
//
//  Created by Yi JIANG on 10/9/18.
//  Copyright © 2018 Uber. All rights reserved.
//

import Foundation
import UIKit

class OtherViewController: UIViewController {
    var showViewButton = UIButton()
    var editBackTextField = UITextField()
    var firstTextLabel = UILabel()
    var secondTextLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        title = "OtherViewController"
        
        showViewButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        showViewButton.translatesAutoresizingMaskIntoConstraints = false
        showViewButton.setTitle("Segue to TableViewController", for: .normal)
        showViewButton.setTitleColor(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), for: .normal)
        showViewButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        view.addSubview(showViewButton)
        showViewButton.addTarget(self, action: #selector(showViewButtonTouchUpInside), for: .touchUpInside)
        showViewButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 130.0).isActive = true
        showViewButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        showViewButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40.0).isActive = true
        showViewButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        editBackTextField.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        editBackTextField.placeholder = "Change previous view text label"
        editBackTextField.textColor = UIColor.white
        editBackTextField.textAlignment = .justified
        editBackTextField.contentVerticalAlignment = .top
        //TODO: stop text field editing.
        editBackTextField.addTarget(self, action: #selector(editPreviousViewControllerTextLabel), for: .editingDidEnd)
        view.addSubview(editBackTextField)
        editBackTextField.translatesAutoresizingMaskIntoConstraints = false
        editBackTextField.topAnchor.constraint(equalTo: showViewButton.bottomAnchor, constant: 100).isActive = true
        editBackTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        editBackTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        editBackTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        hideKeyboardWhenTappedAround()
        
        //Navigation Bar button
        let anotherBackBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(segueBack))
        navigationItem.rightBarButtonItem = anotherBackBarButton
        
    }
    
    @objc func showViewButtonTouchUpInside() {
        resigneAllResponders()
    }
    
    @objc func editPreviousViewControllerTextLabel(){
        let viewController: ViewController!
        if let navigationController = navigationController, navigationController.viewControllers.count >= 2 {
            viewController = navigationController.viewControllers[navigationController.viewControllers.count - 2] as! ViewController
            viewController.targetLabelText = editBackTextField.text ?? "No String"
        }
    }
    
    @objc func segueBack(){
        navigationController?.popViewController(animated: true)
    }

}

extension UIViewController {
 
    fileprivate func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        resigneAllResponders()
    }
    
    fileprivate func resigneAllResponders() {
        for textField in self.view.subviews where textField is UITextField {
            textField.resignFirstResponder()
        }
    }
}
