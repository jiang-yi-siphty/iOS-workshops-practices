//
//  CatalogueViewModelTests.swift
//  VideoCatalogueTests
//
//  Created by Yi JIANG on 29/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import XCTest

class CatalogueViewModelTests: XCTestCase {
    
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

    func testFetchCatalogue() {
        // Given
        mockApiClient.completeCatalogues = [Catalogue]()
        mockApiClient.jsonFileName = .vcResponse_correct
        
        // When
        catalogueViewModel.fetchCatalogue()
        
        // Assert
        XCTAssert(mockApiClient.isNetworkRequestCalled, "CatalogueViewModel.fetchCatalogue should call ApiClient.networkRequest(_ config:, completionHandler:)")
    }
    
    func testFetchCatalogueFail() {
        // Given
        let error: RequestError? = RequestError("Failed to fetch catalogues")
        
        // When
        catalogueViewModel.fetchCatalogue()
        mockApiClient.fetchFail(error: error)
        
        // Assert
        XCTAssertEqual(catalogueViewModel.alertMessage, error?.errorDescription)
    }
    
    func testRearrangeCatalogueArray() {
        #warning("TODO: 🚧👷🏻‍♂️Yi: Test Rearrange Catalogue Array🚧")
        
        // Given
        
        // When
        
        // Assert
    }
    
    func testLoadingWhenFetching() {
        #warning("TODO: 🚧👷🏻‍♂️Yi: Test Loading When Fetching🚧")
        
        // Given
        
        // When
        
        // Assert
    }

}
