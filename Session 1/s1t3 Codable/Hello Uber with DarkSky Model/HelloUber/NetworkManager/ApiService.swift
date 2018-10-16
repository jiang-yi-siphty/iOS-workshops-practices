//
//  ApiService.swift
//  HelloUber
//
//  Created by Yi JIANG on 12/9/18.
//  Copyright © 2018 Uber. All rights reserved.
//

import Foundation
import CoreLocation

enum RequestStatus {
    case success(DarkSky)
    case fail(RequestError)
}

struct RequestError: LocalizedError {
    var statusCode: String? { return sCode }
    var errorDescription: String? { return mMsg }
    var failureReason: String? { return mMsg }
    var recoverySuggestion: String? { return "" }
    var helpAnchor: String? { return "" }
    
    private var sCode : String
    private var mMsg : String
    
    init(_ code: String, _ description: String) {
        sCode = code
        mMsg = description
    }
}

enum ApiConfig {
    case darkSkyForecast(CLLocationCoordinate2D)
    
    //DarkSky
    fileprivate static let darkSkyUrl = "api.darksky.net"
    fileprivate static let darkSkyApi = "forecast"
    fileprivate static let darkSkyKey = "0b935c729408abd4e9ce775d09d37c73"
    
    var urlPath: String {
        switch self {
        case .darkSkyForecast(let coordinate):
            return "/\(ApiConfig.darkSkyApi)/\(ApiConfig.darkSkyKey)/\(coordinate.latitude),\(coordinate.longitude)"
        }
    }
    
    
    var method: String {
        switch self {
        case .darkSkyForecast(_):
            return "GET"
        }
    }
    
    var header: [String: Any]?{
        switch self {
        case .darkSkyForecast(_):
            return nil
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .darkSkyForecast(_):
            return nil
        }
    }
    
    func getFullUrl() -> URL {
        var baseUrl: String!
        switch self {
        case .darkSkyForecast(_):
            baseUrl = ApiConfig.darkSkyUrl
        }
        
        if let url = URL(string: baseUrl + self.urlPath)  {
            return url
        } else {
            return URL(string: baseUrl)!
        }
    }
}

protocol ApiService {
    func networkRequest(_ config: ApiConfig, completionHandler: @escaping ((_ data: Data?, _ error: RequestError?) -> Void))
}

extension ApiService {
    
    public func encode<T>(of model: T) throws where T: Codable {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let encodedData = try encoder.encode(model)
        print(String(data: encodedData, encoding: .utf8)!)
    }
    
    public func decode<T>(of jsonString: String, type: T.Type) throws -> T where T: Codable {
        let data = jsonString.data(using: .utf8)!
        let decoder = JSONDecoder()
        let model = try! decoder.decode(T.self, from: data)
        return model
    }
    
    public func decode<T>(of data: Data, type: T.Type) throws -> T where T: Codable {
        let decoder = JSONDecoder()
        let model = try! decoder.decode(T.self, from: data)
        return model
    }
    
}

