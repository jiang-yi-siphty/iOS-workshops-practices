//
//  Data.swift
//  SwiftUi+Combine Demo
//
//  Created by Yi JIANG on 18/6/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation

let landmarkData: [Landmark] = load("BeijingAttractions.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, 
                                     withExtension: nil) else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class ImageStore {
    fileprivate typealias _ImageDictionary = [String: [Int: CGImage]]
    fileprivate var images: _ImageDictionary = [:]
    
    fileprivate static var originalSize = 250
    fileprivate static var scale = 2
    
    static var shared = ImageStore()
    
    func image(name: String, size: Int) -> Image {
        let index = _guaranteeInitialImage(name: name)
        
        let sizedImage = images.values[index][size]
            ?? _sizeImage(images.values[index][ImageStore.originalSize]!, to: size * ImageStore.scale)
        images.values[index][size] = sizedImage
        
        return Image(sizedImage, scale: Length(ImageStore.scale), label: Text(verbatim: name))
    }
    
    fileprivate func _guaranteeInitialImage(name: String) -> _ImageDictionary.Index {
        if let index = images.index(forKey: name) { return index }
        
        guard
            let image = UIImage(named: name)?.cgImage
            else {
                fatalError("Couldn't load image \(name).jpg from assets.")
        }
        
        images[name] = [ImageStore.originalSize: image]
        return images.index(forKey: name)!
    }
    
    fileprivate func _sizeImage(_ image: CGImage, to size: Int) -> CGImage {
        guard
            let colorSpace = image.colorSpace,
            let context = CGContext(
                data: nil,
                width: size, height: size,
                bitsPerComponent: image.bitsPerComponent,
                bytesPerRow: image.bytesPerRow,
                space: colorSpace,
                bitmapInfo: image.bitmapInfo.rawValue)
            else {
                fatalError("Couldn't create graphics context.")
        }
        context.interpolationQuality = .high
        context.draw(image, in: CGRect(x: 0, y: 0, width: size, height: size))
        
        if let sizedImage = context.makeImage() {
            return sizedImage
        } else {
            fatalError("Couldn't resize image.")
        }
    }
}

