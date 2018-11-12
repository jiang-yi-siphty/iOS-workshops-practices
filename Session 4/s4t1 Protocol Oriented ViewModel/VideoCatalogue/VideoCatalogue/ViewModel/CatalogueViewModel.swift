//
//  CatalogueViewModel.swift
//  VideoCatalogue
//
//  Created by Yi JIANG on 26/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import Foundation

class CatalogueViewModel: CatalogueViewModeling {
    
    let apiClient: ApiClient
    
    var catalogues = [Catalogue]() {
        didSet {
            didUpdateCatalogue?()
        }
    }
    
    var isLoading = false {
        didSet {
            updateLoadingStatus?()
        }
    }
    
    var alertMessage: String? {
        didSet {
            hasAlertMessage?()
        }
    }
    
    // MARK: - TableView
    var numberOfSections: Int {
        return catalogues.count
    }
    
    // MARK: - Events
    var hasError: ((RequestError) -> Void)?
    var didUpdateCatalogue: (() -> Void)?
    var updateLoadingStatus: (() -> Void)?
    var hasAlertMessage: (() -> Void)?
    
    init(_ apiClient: ApiClient = ApiClient()) {
        self.apiClient = apiClient
    }
    
    func fetchCatalogue() {
        isLoading = true
        apiClient.networkRequest(.videoCatalogue) { [weak self] (data, error) in
            guard let self = self else { return }
            self.isLoading = false
            if let error = error {
                self.hasError?(error)
                self.alertMessage = error.errorDescription
                return
            }
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    self.catalogues = try decoder.decode([Catalogue].self, from: data)
                } catch {
                    self.alertMessage = "Can't decode API response"
                }
            }
            
        }
    }
    
    func getNumberOfCells(in section: Int) -> Int {
        guard catalogues.count > 0,
            section < catalogues.count,
            let items = catalogues[section].items
        else { return 0 }
        return items.count
    }
    
    func getItem(in section: Int, at index: Int) -> Item? {
        guard catalogues.count > 0,
            section < catalogues.count,
            let items = catalogues[section].items,
            items.count > 0,
            index < items.count
        else { return nil }
        return items[index]
    }
    
    func getCatalogueTitle(for section: Int) -> String? {
        guard catalogues.count > 0,
            section < catalogues.count
            else { return nil }
        return catalogues[section].category
    }
    
    func arrangeCatalogues() {
        let catalogueDic = Dictionary(grouping: catalogues, by: { $0.category })
        var newCatalogues = [Catalogue?]()
        newCatalogues.append(catalogueDic["Features"]?[0])
        newCatalogues.append(catalogueDic["Movies"]?[0])
        newCatalogues.append(catalogueDic["TV Shows"]?[0])
        catalogues = newCatalogues.compactMap{ $0 }
    }
}

