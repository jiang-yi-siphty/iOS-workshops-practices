//
//  ApiClientAndModelTests.swift
//  ApiClientAndModelTests
//
//  Created by Yi JIANG on 24/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import XCTest
@testable import VideoCatalogue

class ApiClientAndModelTests: XCTestCase {

    var catalogueViewModel: CatalogueViewModel!
    var mockApiClient: MockApiClient!
    
    override func setUp() {
        super.setUp()
        mockApiClient = MockApiClient()
        catalogueViewModel = CatalogueViewModel(mockApiClient)
    }
    
    override func tearDown() {
        catalogueViewModel = nil
        mockApiClient = nil
        super.tearDown()
    }

    func testVideoCatalogueApiService() {
        // Given
        let realApiClient = ApiClient()
        var responseData: Data? = nil
        var responseModel: [Catalogue]? = nil
        
        // When
        realApiClient.networkRequest(.videoCatalogue) { (data, error) in
            guard error != nil else {
                print("Error: \(error.debugDescription)")
                return
            }
            guard let data = data else {
                return
            }
            responseData = data
            let decoder = JSONDecoder()
            do {
                responseModel = try decoder.decode([Catalogue].self, from: data)
            } catch {
                XCTFail()
            }
            
            // Assert
            XCTAssert(responseData != nil, "The API service doesn't response correct data back.")
            XCTAssert(responseData != nil, "The API service's response data can't be decode by some reasons.")
            XCTAssert(responseModel?.count == 0, "The API service responses empty data back.")
            XCTAssert((responseModel?.count)! > 3, "The API service should responses only 3 catalogues in json.")
        }
        
        
    }
    
    func testVideoCatalogueModelWithCorrectMockData() {
        // Given
        mockApiClient.jsonFileName = .vcResponse_correct
        var responseModel: [Catalogue]? = nil
        
        // When
        mockApiClient.networkRequest(.videoCatalogue) { (data, error) in
            if error == nil {
                if let data = data {
                    let decoder = JSONDecoder()
                    responseModel = try! decoder.decode([Catalogue].self, from: data)
                    dump(responseModel)
                }
            }
            
            // Assert
            XCTAssert(error == nil, "Network request got error.")
            XCTAssert(data != nil, "The API service doesn't response correct data back.")
            XCTAssert(responseModel != nil, "The API service's response data can't be decode by some reasons.")
            guard let responseModel = responseModel else { return }
            XCTAssertTrue(responseModel.count == 3, "The mock data has THREE catalogues.")
        }
    }
    
    func testVideoCatalogueModelWithEmptyMockData() {
        // Given
        mockApiClient.jsonFileName = .vcResponse_empty
        var responseModel: [Catalogue]? = nil
        
        // When
        mockApiClient.networkRequest(.videoCatalogue) { (data, error) in
            if error == nil {
                if let data = data {
                    let decoder = JSONDecoder()
                    responseModel = try! decoder.decode([Catalogue].self, from: data)
                    dump(responseModel)
                }
            }
            
            // Assert
            XCTAssert(error == nil, "Network request got error.")
            XCTAssert(data != nil, "The API service doesn't response correct data back.")
            XCTAssert(responseModel != nil, "The API service's response data can't be decoded by some reasons.")
            guard let responseModel = responseModel else { return }
            XCTAssertTrue(responseModel.count == 0, "The mock data has ZERO catalogues.")
        }
    }
    
    func testVideoCatalogueModelWithIncorrectMockData() {
        // Given
        mockApiClient.jsonFileName = .vcResponse_incorrect
        var responseModel: [Catalogue]? = nil
        
        // When
        mockApiClient.networkRequest(.videoCatalogue) { (data, error) in
            var decodeError: Error? = nil
            if error == nil {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        responseModel = try decoder.decode([Catalogue].self, from: data)
                    } catch {
                        print("Error info: \(error)")
                        decodeError = error
                    }
                    dump(responseModel)
                }
            }
            
            // Assert
            XCTAssert(error == nil, "Network request got error.")
            XCTAssert(decodeError != nil, "The decode should has error as the mock data is incorrect.")
            XCTAssert(data != nil, "The API service doesn't response correct data back.")
            XCTAssert(responseModel == nil, "The API service's response data shouldn't be decoded.")
        }
    }
}


