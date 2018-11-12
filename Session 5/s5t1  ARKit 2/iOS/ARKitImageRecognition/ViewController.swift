/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Main view controller for the AR experience.
*/

import ARKit
import SceneKit
import UIKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    private let newsVideoPlayerNameKey = "news"
    private let realestateVideoPlayerNameKey = "realestate"
    private let dreamfinderVideoPlayerNameKey = "dream"
    private let dreamfinder1VideoPlayerNameKey = "dream1"
    
    /// The view controller that displays the status and "restart experience" UI.
    lazy var statusViewController: StatusViewController = {
        return childViewControllers.lazy.compactMap({ $0 as? StatusViewController }).first!
    }()
    
    let newsVideoPlayer : AVPlayer = {
        guard let url = Bundle.main.url(forResource: "news-video",   withExtension: "m4v") else {
            print("Could not find video file.")
            return AVPlayer()
        }
        let player = AVPlayer(url: url)
        return player
    }()
    
    let realestateVideoPlayer : AVPlayer = {
        guard let url = Bundle.main.url(forResource: "house-video",   withExtension: "mp4") else {
            print("Could not find video file.")
            return AVPlayer()
        }
        return AVPlayer(url: url)
    }()
    
    let dreamfinderVideoPlayer : AVPlayer = {
        guard let url = Bundle.main.url(forResource: "dream-video",   withExtension: "mp4") else {
            print("Could not find video file.")
            return AVPlayer()
        }
        return AVPlayer(url: url)
    }()
    
    let dreamfinder1VideoPlayer : AVPlayer = {
        guard let url = Bundle.main.url(forResource: "dream1-video",   withExtension: "mp4") else {
            print("Could not find video file.")
            return AVPlayer()
        }
        return AVPlayer(url: url)
    }()
    
    /// A serial queue for thread safety when modifying the SceneKit node graph.
    let updateQueue = DispatchQueue(label: Bundle.main.bundleIdentifier! +
        ".serialSceneKitQueue")
    
    /// Convenience accessor for the session owned by ARSCNView.
    var session: ARSession {
        return sceneView.session
    }
    
    // MARK: - View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.session.delegate = self

        // Hook up status view controller callback(s).
        statusViewController.restartExperienceHandler = { [unowned self] in
            self.restartExperience()
        }
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: newsVideoPlayer.currentItem, queue: nil) { (_) in
            self.newsVideoPlayer.seek(to: kCMTimeZero)
            self.newsVideoPlayer.play()
        }
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: realestateVideoPlayer.currentItem, queue: nil) { (_) in
            self.realestateVideoPlayer.seek(to: kCMTimeZero)
            self.realestateVideoPlayer.play()
        }
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: dreamfinderVideoPlayer.currentItem, queue: nil) { (_) in
            self.dreamfinderVideoPlayer.seek(to: kCMTimeZero)
            self.dreamfinderVideoPlayer.play()
        }
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: dreamfinder1VideoPlayer.currentItem, queue: nil) { (_) in
            self.dreamfinder1VideoPlayer.seek(to: kCMTimeZero)
            self.dreamfinder1VideoPlayer.play()
        }

        addTapGestureToSceneView()
    }

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		// Prevent the screen from being dimmed to avoid interuppting the AR experience.
		UIApplication.shared.isIdleTimerDisabled = true

        // Start the AR experience
        resetTracking()
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)

        session.pause()
	}

    // MARK: - Session management (Image detection setup)
    
    /// Prevents restarting the session while a restart is in progress.
    var isRestartAvailable = true

    /// Creates a new AR configuration to run on the `session`.
    /// - Tag: ARReferenceImage-Loading
	func resetTracking() {
        
        guard let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil) else {
            fatalError("Missing expected asset catalog resources.")
        }
        
        let configuration = ARImageTrackingConfiguration()
        configuration.trackingImages = referenceImages
        configuration.maximumNumberOfTrackedImages = 4
        
        session.run(configuration, options: [.resetTracking, .removeExistingAnchors])

        statusViewController.scheduleMessage("Look around to detect images", inSeconds: 7.5, messageType: .contentPlacement)
        
        newsVideoPlayer.pause()
	}
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
        guard let imageAnchor = anchor as? ARImageAnchor else { return node }
        let referenceImage = imageAnchor.referenceImage
        
        let plane = SCNPlane(width: referenceImage.physicalSize.width,
                             height: referenceImage.physicalSize.height)
        
        let videoPlayer: AVPlayer
        switch referenceImage.name {
        case newsVideoPlayerNameKey:
            videoPlayer = newsVideoPlayer
        case realestateVideoPlayerNameKey:
            videoPlayer = realestateVideoPlayer
        case dreamfinderVideoPlayerNameKey:
            videoPlayer = dreamfinderVideoPlayer
        case dreamfinder1VideoPlayerNameKey:
            videoPlayer = dreamfinder1VideoPlayer
        default:
            return node
        }
        
        plane.firstMaterial?.diffuse.contents = videoPlayer
        videoPlayer.play()
        videoPlayer.isMuted = true
        
        let planeNode = SCNNode(geometry: plane)
        planeNode.eulerAngles.x = -.pi / 2
        planeNode.name = referenceImage.name
        node.addChildNode(planeNode)
        return node
    }
}

extension ViewController {
    func addTapGestureToSceneView() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.didTap(withGestureRecognizer:)))
        sceneView.addGestureRecognizer(tapGestureRecognizer)
    }

    @objc func didTap(withGestureRecognizer recognizer: UIGestureRecognizer) {
        let tapLocation = recognizer.location(in: sceneView)
        let hitTestResults = sceneView.hitTest(tapLocation)
        guard let node = hitTestResults.first?.node else { return }
        if let clickedPlayer = node.geometry?.firstMaterial?.diffuse.contents as? AVPlayer {
            performSegue(withIdentifier: "video", sender: clickedPlayer)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "video" {
            if let destinationVC = segue.destination as? VideoViewController,
                let videoPlayer = sender as? AVPlayer
            {
                destinationVC.videoPlayer = videoPlayer
            }
        }
    }
}
