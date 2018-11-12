//
//  ApiService.swift
//  VideoCatalogue
//
//  Created by Yi JIANG on 26/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import Foundation

enum RequestStatus {
    case success(AnyObject?)
    case fail(RequestError)
}

struct RequestError : LocalizedError {
    var errorDescription: String? { return mMsg }
    var failureReason: String? { return mMsg }
    var recoverySuggestion: String? { return "" }
    var helpAnchor: String? { return "" }
    private var mMsg : String
    
    init(_ description: String) {
        mMsg = description
    }
    
    init(_ error: Error){
        mMsg = error.localizedDescription
    }
}

enum ApiConfig {
    case videoCatalogue
    //We can extend to call other service or other API
    
    //VC: VideoCatalogue
    fileprivate static let VCBaseUrl = "https://s3-ap-southeast-2.amazonaws.com"
    fileprivate static let VCApiVersion = "" //If we need API version in the future.
    
    var urlPath: String {
        switch self {
        case .videoCatalogue:
            return "/video-catalogue/data.json"
        }
    }

    var method: String {
        switch self {
        case .videoCatalogue:
            return "GET"
        }
    }
    
    var header: [String: Any]?{
        switch self {
        case .videoCatalogue:
            return nil
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .videoCatalogue:
            return nil
        }
    }
    
    func getFullUrl() -> URL {
        var baseUrl: String!
        switch self {
        case .videoCatalogue:
            baseUrl = ApiConfig.VCBaseUrl
        }
        
        if let url = URL(string: baseUrl + self.urlPath)  {
            return url
        } else {
            return URL(string: baseUrl)!
        }
    }
}

protocol ApiService {
    func networkRequest(_ config: ApiConfig, completionHandler: @escaping ((_ json: Data?, _ error: RequestError?) -> Void))
}
