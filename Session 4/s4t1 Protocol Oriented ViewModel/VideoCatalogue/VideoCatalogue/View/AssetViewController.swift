//
//  AssetViewController.swift
//  VideoCatalogue
//
//  Created by Yi JIANG on 28/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import UIKit
import Kingfisher

class AssetViewController: UIViewController {
    var assetItem: Item?
    
    @IBOutlet var assetTitleLabel: UILabel!
    @IBOutlet var assetYearLabel: UILabel!
    @IBOutlet var assetDescriptionLabel: UILabel!
    @IBOutlet var assetImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let assetItem = assetItem else { return }
        assetTitleLabel.text = assetItem.title ?? "No Title"
        if let year = assetItem.year {
            assetYearLabel.text = String("\(year)")
        } else {
           assetYearLabel.text = "Unknown Year"
        }
        assetDescriptionLabel.text = assetItem.description ?? ""
        updateImage()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        updateImage()
    }
    
    @IBAction func crossButtonTouchUpInside(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc private func updateImage() {
        let imageUrlString: String
        if UIDevice.current.orientation.isLandscape {
            guard let portrait = assetItem?.images?.landscape else { return }
            imageUrlString = portrait
        } else {
            guard let landscape = assetItem?.images?.portrait else { return }
            imageUrlString = landscape
        }
        let posterUrl = URL(string: imageUrlString)
        assetImageView.kf.setImage(with: posterUrl, placeholder: Image(named: "placeholder"), options: nil, progressBlock: nil, completionHandler: nil)
    }
    
}
