//
//  VideoViewController.swift
//  ARKitImageRecognition
//
//  Created by Hua, Yin on 8/11/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit
import AVFoundation

class VideoViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!

    var videoPlayer: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let player = videoPlayer else { return }
        player.isMuted = false
        player.seek(to: kCMTimeZero)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }
 
    @IBAction func tapBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
