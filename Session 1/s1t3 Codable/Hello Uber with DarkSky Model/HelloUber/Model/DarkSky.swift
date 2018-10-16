//
//  DarkSky.swift
//  HelloUber
//
//  Created by Yi JIANG on 11/9/18.
//  Copyright © 2018 Uber. All rights reserved.
//

import Foundation

struct DarkSky: Codable {
    
    let latitude: Double
    let longitude: Double
    let timezone: String
    let currently: Currently
    let daily: Daily
    let flags: Flags
    
    struct Currently: Codable {
        let time: Int32
        let summary: String
        let icon: String
        let temperature: Double
        let humidity: Double
        let pressure: Double
        let windSpeed: Double
        let windGust: Double
        let windBearing: Double
        let cloudCover: Double
        let uvIndex: Int
        let visibility: Int
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            time = try container.decode(Int32.self, forKey: .time)
            summary = try container.decode(String.self, forKey: .summary)
            icon = try container.decode(String.self, forKey: .icon)
            temperature = try container.decode(Double.self, forKey: .temperature)
            humidity = try container.decode(Double.self, forKey: .humidity)
            pressure = try container.decode(Double.self, forKey: .pressure)
            windSpeed = try container.decode(Double.self, forKey: .windSpeed)
            windGust = try container.decode(Double.self, forKey: .windGust)
            windBearing = try container.decode(Double.self, forKey: .windBearing)
            cloudCover = try container.decode(Double.self, forKey: .cloudCover)
            uvIndex = try container.decode(Int.self, forKey: .uvIndex)
            visibility = try container.decode(Int.self, forKey: .visibility)
        }
    }
    
    struct Daily: Codable {
        let summary: String
        let icon: String
        let data: [Data]
        
        struct Data: Codable {
            let time: Int32
            let summary: String
            let icon: String
            let temperatureMax: Double
            let temperatureMin: Double
            let humidity: Double
            let pressure: Double
            let windSpeed: Double
            let windGust: Double
            let windBearing: Double
            let cloudCover: Double
            let uvIndex: Int
            let visibility: Int
            let sunriseTime: Int32
            let sunsetTime: Int32
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                time = try container.decode(Int32.self, forKey: .time)
                summary = try container.decode(String.self, forKey: .summary)
                icon = try container.decode(String.self, forKey: .icon)
                temperatureMax = try container.decode(Double.self, forKey: .temperatureMax)
                temperatureMin = try container.decode(Double.self, forKey: .temperatureMin)
                humidity = try container.decode(Double.self, forKey: .humidity)
                pressure = try container.decode(Double.self, forKey: .pressure)
                windSpeed = try container.decode(Double.self, forKey: .windSpeed)
                windGust = try container.decode(Double.self, forKey: .windGust)
                windBearing = try container.decode(Double.self, forKey: .windBearing)
                cloudCover = try container.decode(Double.self, forKey: .cloudCover)
                uvIndex = try container.decode(Int.self, forKey: .uvIndex)
                visibility = try container.decode(Int.self, forKey: .visibility)
                sunriseTime = try container.decode(Int32.self, forKey: .sunriseTime)
                sunsetTime = try container.decode(Int32.self, forKey: .sunsetTime)
            }
        }
        
        init(from decoder: Decoder) throws{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            summary = try container.decode(String.self, forKey: .summary)
            icon = try container.decode(String.self, forKey: .icon)
            var unkeyedContainer = try container.nestedUnkeyedContainer(forKey: .data)
            var data = [Data]()
            while !unkeyedContainer.isAtEnd {
                let datum = try unkeyedContainer.decode(Data.self)
                data.append(datum)
            }
            self.data = data
        }
    }
    
    struct Flags: Codable {
        let sources: [String]
        let nearestStation: Double
        let units: String
        
        enum CodingKeys: String, CodingKey {
            case sources
            case units
            case nearestStation = "nearest-station"
        }
        
        init(from decoder: Decoder) throws{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            var unkeyedContainer = try container.nestedUnkeyedContainer(forKey: .sources)
            var sources = [String]()
            while !unkeyedContainer.isAtEnd {
                let source = try unkeyedContainer.decode(String.self)
                sources.append(source)
            }
            self.sources = sources
            units = try container.decode(String.self, forKey: .units)
            nearestStation = try container.decode(Double.self, forKey: .nearestStation)
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        latitude = try container.decode(Double.self, forKey: .latitude)
        longitude = try container.decode(Double.self, forKey: .longitude)
        timezone = try container.decode(String.self, forKey: .timezone)
        currently = try container.decode(Currently.self, forKey: .currently)
        daily = try container.decode(Daily.self, forKey: .daily)
        flags = try container.decode(Flags.self, forKey: .flags)
    }
    
}

