//  Copyright © 2019 BWS. All rights reserved.

import UIKit

class FloatingButtonController: UIViewController {
  
  private(set) var button: UIButton!
  private var currentSocket: CGPoint?
  
  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
  
  init() {
    super.init(nibName: nil, bundle: nil)
    window.windowLevel = UIWindow.Level(rawValue: CGFloat.greatestFiniteMagnitude)
    window.isHidden = false
    window.rootViewController = self
    
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(note:)), name: UIResponder.keyboardDidShowNotification, object: nil)
  }
  
  private let window = FloatingWindow()
  
  override func loadView() {
    let view = UIView()
    let button = UIButton(type: .custom)
    button.setTitleColor(UIColor.green, for: .normal)
    button.backgroundColor = nil
    button.setImage(.floatingButtonBackground, for: .normal)
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowRadius = 3
    button.layer.shadowOpacity = 0.8
    button.layer.shadowOffset = CGSize.zero
    button.sizeToFit()
    button.frame = CGRect(origin: CGPoint(x: 0, y: 200), size: button.bounds.size)
    button.autoresizingMask = []
    button.addTarget(self, action: #selector(feedbackButtonTouchUpInside), for: .touchUpInside)
    view.addSubview(button)
    self.view = view
    self.button = button
    window.button = button
    let panner = UIPanGestureRecognizer(target: self, action: #selector(panDidFire(panner:)))
    button.addGestureRecognizer(panner)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    snapButtonToSocket()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    window.view = nil
    window.button = button
  }
  
  @objc func feedbackButtonTouchUpInside(sender: UIButton!) {
    if let viewController = Storyboard.internalFeedback.initialViewController as? FloatingFeedbackViewController{
      viewController.screenShot = takeScreenshot()
      window.view = viewController.view
      window.button = nil
      window.rootViewController?.present(viewController, animated: false, completion: nil)
    }
  }
  
  @objc func panDidFire(panner: UIPanGestureRecognizer) {
    let offset = panner.translation(in: view)
    panner.setTranslation(CGPoint.zero, in: view)
    var center = button.center
    center.x += offset.x
    center.y += offset.y
    button.center = center
    
    if panner.state == .ended || panner.state == .cancelled {
      UIView.animate(withDuration: 0.3) {
        self.snapButtonToSocket()
      }
    }
  }
  
  @objc func keyboardDidShow(note: NSNotification) {
    window.windowLevel = UIWindow.Level(rawValue: 0)
    window.windowLevel = UIWindow.Level(rawValue: CGFloat.greatestFiniteMagnitude)
  }
  
  private func snapButtonToSocket() {
    var bestSocket = CGPoint.zero
    var distanceToBestSocket = CGFloat.infinity
    let center = button.center
    sockets.filter { socket in
      return !socket.equalTo(currentSocket ?? CGPoint.zero)
      }.forEach { socket in
        let distance = hypot(center.x - socket.x, center.y - socket.y)
        if distance < distanceToBestSocket {
          distanceToBestSocket = distance
          bestSocket = socket
        }
    }
    button.center = bestSocket
    currentSocket = bestSocket
  }
  
  private var sockets: [CGPoint] {
    let buttonSize = button.bounds.size
    let rect = view.bounds.insetBy(dx: view.safeAreaInsets.left + buttonSize.width / 2, dy: view.safeAreaInsets.top + buttonSize.height / 2)
    let sockets: [CGPoint] = [
      CGPoint(x: rect.minX, y: rect.maxY * 0.1),
      CGPoint(x: rect.maxX, y: rect.maxY * 0.1),
      CGPoint(x: rect.maxX, y: rect.maxY * 0.55),
      CGPoint(x: rect.minX, y: rect.maxY * 0.55)
    ]
    return sockets
  }
  
}

extension FloatingButtonController {
  
  open func takeScreenshot() -> UIImage? {
    var screenshotImage: UIImage?
    let layer = UIApplication.shared.keyWindow!.layer
    let scale = UIScreen.main.scale
    UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale)
    guard let context = UIGraphicsGetCurrentContext() else {return nil}
    layer.render(in: context)
    screenshotImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return screenshotImage
  }
  
}

private class FloatingWindow: UIWindow {
  
  var button: UIButton?
  var view: UIView?
  init() {
    super.init(frame: UIScreen.main.bounds)
    backgroundColor = nil
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
    if let button = button  {
      let buttonPoint = convert(point, to: button)
      return button.point(inside: buttonPoint, with: event)
    } else if let view = view  {
      let viewPoint = convert(point, to: view)
      return view.point(inside: viewPoint, with: event)
    } else {
      return false
    }
  }
  
}
