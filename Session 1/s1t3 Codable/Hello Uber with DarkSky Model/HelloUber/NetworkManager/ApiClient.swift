//
//  ApiClient.swift
//  HelloUber
//
//  Created by Yi JIANG on 12/9/18.
//  Copyright © 2018 Uber. All rights reserved.
//

import Foundation

class ApiClient: ApiService {
    
    func networkRequest(_ config: ApiConfig, completionHandler: @escaping ((Data?, RequestError?) -> Void)) {
        networkRequestByURLSession(config, completionHandler: completionHandler)
    }
    
}


extension ApiClient {
    
    func networkRequestByURLSession(_ config: ApiConfig, completionHandler: @escaping ((_ data: Data?, _ error: RequestError?) -> Void)) {
        URLCache.shared.removeAllCachedResponses()
        let url = config.getFullUrl()
        let session = URLSession.shared
        var request = URLRequest.init(url: url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 30)
        request.httpMethod = config.method
        let task = session.dataTask(with: request) { (data, response, error) in
            self.responseHandler(config, data, error, completionHandler)
        }
        task.resume()
    }
    
    fileprivate func responseHandler(_ config: ApiConfig, _ data: Data?, _ error: Error?, _ completionHandler: @escaping ((_ data: Data?, _ error: RequestError?) -> Void)){
        //TODO: based on config to switch different mode: like Unit Test
        if let error = error {
            completionHandler(nil, RequestError("error", error.localizedDescription))
        } else if let data = data {
            completionHandler(data, nil)
        }
    }
}

