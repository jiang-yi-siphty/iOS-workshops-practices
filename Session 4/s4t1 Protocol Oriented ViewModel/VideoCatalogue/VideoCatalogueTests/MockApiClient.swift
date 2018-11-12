//
//  MockApiClient.swift
//  VideoCatalogueTests
//
//  Created by Yi JIANG on 29/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import Foundation

class MockApiClient: ApiClient {
    
    enum JsonFileName: String {
        case vcResponse_correct = "APIResponse"
        case vcResponse_empty = "APIResponse_empty"
        case vcResponse_incorrect = "APIResponse_incorrect"
        case vcResponse_rearangeLessCatalogues = "APIResponseRearrangeLessCatalogues"
        case vcResponse_rearangeMoreCatalogues = "APIResponseRearrangeMoreCatalogues"
        case vcResponse_rearangeMessyCatalogues = "APIResponseRearrangeMessyCatalogues"
    }
    
    var jsonFileName: JsonFileName = .vcResponse_correct
    var isNetworkRequestCalled = false
    var completeCatalogues = [Catalogue]()
    var completionHandler: ((Data?, RequestError?) -> Void)!
    
    //Use mock response data
    override func networkRequest(_ config: ApiConfig, completionHandler: @escaping ((Data?, RequestError?) -> Void)) {
        isNetworkRequestCalled = true
        guard let jsonData = JsonFileLoader.loadJson(fileName: jsonFileName.rawValue) else {
            completionHandler(nil, RequestError("Video Catalogue information failed."))
            return
        }
        completionHandler(jsonData, nil)
    }
    
    func fetchSuccess(data: Data?) {
        completionHandler(data, nil)
    }
    
    func fetchFail(error: RequestError?) {
        completionHandler(nil, error)
    }
}

class JsonFileLoader {
    
    class func loadJson(fileName: String) -> Data? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                return try NSData(contentsOf: url) as Data
            } catch let error {
                print("Error!! Unable to parse  \(fileName).json\n error: \(error)")
            }
            print("Error!! Unable to load  \(fileName).json")
        } else {
            print("invalid url")
        }
        return nil
    }
}
