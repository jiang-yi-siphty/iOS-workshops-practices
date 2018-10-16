//
//  ForcastViewModel.swift
//  HelloUber
//
//  Created by Yi JIANG on 12/9/18.
//  Copyright © 2018 Uber. All rights reserved.
//

import Foundation
import CoreLocation

class ForcastViewModel {
    
    var coordinate = CLLocationCoordinate2D(latitude: CLLocationDegrees(37.8267), longitude: CLLocationDegrees(-122.4233))
    struct dailyWeather {
        var time: Int32 = 0
        var summary: String = ""
        var icon: String = ""
        var temperatureMax: Double = 0.0
        var temperatureMin: Double = 0.0
        var humidity: Double = 0.0
        var pressure: Double = 0.0
        var windSpeed: Double = 0.0
        var windGust: Double = 0.0
        var windBearing: Double = 0.0
        var cloudCover: Double = 0.0
        var uvIndex: Int = 0
        var visibility: Int = 0
        var sunriseTime: Int32 = 0
        var sunsetTime: Int32 = 0
    }
    var dailyWeathers = [dailyWeather]()
    
    //MARK: - Events
    var didError: ((Error?) -> Void)?
    var didUpdate: (() -> Void)?
    
    init(_ apiService: ApiService, at coordinate: CLLocationCoordinate2D?) {
        if coordinate != nil {
            self.coordinate = coordinate!
        }
        fetchWeather(apiService)
    }

    fileprivate func fetchWeather(_ apiService: ApiService) {
        apiService.networkRequest(ApiConfig.darkSkyForecast(coordinate)) { (data, requestError) in
            if let data = data {
                do {
                    let darkSkyModel: DarkSky
                    darkSkyModel = try apiService.decode(of: data, type: DarkSky.self)
                    self.bindViewModel(with: darkSkyModel)
                } catch let error {
                    self.didError?(error)
                }
                self.didUpdate?()
            } else {
                print("requestError: \(String(describing: requestError))")
                self.didError?(nil)
            }
        }
    }
    
    fileprivate func bindViewModel(with darkSkey: DarkSky) {
//        var time: Int32 = darkSkey.daily
//        var summary: String = ""
//        var icon: String = ""
//        var temperatureMax: Double = 0.0
//        var temperatureMin: Double = 0.0
//        var humidity: Double = 0.0
//        var pressure: Double = 0.0
//        var windSpeed: Double = 0.0
//        var windGust: Double = 0.0
//        var windBearing: Double = 0.0
//        var cloudCover: Double = 0.0
//        var uvIndex: Int = 0
//        var visibility: Int = 0
//        var sunriseTime: Int32 = 0
//        var sunsetTime: Int32 = 0
    }
}
