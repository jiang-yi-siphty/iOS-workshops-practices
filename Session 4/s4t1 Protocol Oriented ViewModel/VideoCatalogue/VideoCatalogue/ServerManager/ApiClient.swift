//
//  ApiClient.swift
//  VideoCatalogue
//
//  Created by Yi JIANG on 26/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import Foundation

class ApiClient: ApiService {

    func networkRequest(_ config: ApiConfig, completionHandler: @escaping ((Data?, RequestError?) -> Void)) {
            networkRequestByNSURLSession(config, completionHandler: completionHandler)
    }
    
}

extension ApiClient {
    
    // We can use any of other network SDK to replace this , such as Alamofire or old NSURLConnection or AFNetworking
    fileprivate func networkRequestByNSURLSession(_ config: ApiConfig, completionHandler: @escaping ((_ jsonResponse: Data?, _ error: RequestError?) -> Void)) {
        URLCache.shared.removeAllCachedResponses()
        let url = config.getFullUrl()
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            self.responseHandler(data, error, completionHandler)
        }
        task.resume()
    }
    
    fileprivate func responseHandler(_ data: Data?, _ error: Error?, _ completionHandler: @escaping ((_ jsonResponse: Data?, _ error: RequestError?) -> Void)){
        if let error = error {
            completionHandler(nil, RequestError(error.localizedDescription))
        } else if let data = data {
            completionHandler(data, nil)
        }
    }
    
}
