//
//  CatalogueTableViewController.swift
//  VideoCatalogue
//
//  Created by Yi JIANG on 27/10/18.
//  Copyright © 2018 Siphty. All rights reserved.
//

import UIKit

class CatalogueTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    lazy var viewModel: CatalogueViewModel = {
        return CatalogueViewModel()
    }
    
    var viewModelInjected: CatalogueViewModeling!
    
    private let refreshControl = UIRefreshControl()
    private var selectedItem: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        initViewModel()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAssetDetails" {
            let assetViewController = segue.destination as! AssetViewController
            assetViewController.assetItem = selectedItem
        }
    }
    
    private func initView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 143
        tableView.rowHeight = UITableView.automaticDimension
        refreshControl.addTarget(self, action: #selector(pullToRefresh), for: .valueChanged)
        tableView.addSubview(refreshControl)
    }
    
    // MARK: - Events and Data binding
    private func initViewModel() {
        viewModel.hasAlertMessage = { () in
            DispatchQueue.main.async { [weak self] in
                guard let self = self,
                    let message = self.viewModel.alertMessage
                    else { return }
                self.showAlert(message)
            }
        }
        
        viewModel.hasError = { (error) in
            DispatchQueue.main.async {
                print(error.errorDescription ?? "No error Description")
            }
        }
        
        viewModel.didUpdateCatalogue = {
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.viewModel.arrangeCatalogues()
                self.tableView.reloadData()
                self.refreshControl.endRefreshing()
            }
        }
        
        viewModel.updateLoadingStatus = { ()
            DispatchQueue.main.async { [weak self] in
                let isLoading = self?.viewModel.isLoading ?? false
                if isLoading {
                    self?.loadingIndicator.startAnimating()
                    UIView.animate(withDuration: 0.2, animations: {
                        self?.tableView.alpha = 0.0
                    })
                }else {
                    self?.loadingIndicator.stopAnimating()
                    UIView.animate(withDuration: 0.2, animations: {
                        self?.tableView.alpha = 1.0
                    })
                }
            }
        }
        
        viewModel.fetchCatalogue()
    }
    
    // MARK: - private func
    func showAlert( _ message: String ) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction( UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @objc func pullToRefresh() {
        viewModel.fetchCatalogue()
    }
    
}

// MARK: - UITableViewDelegate

extension CatalogueTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.getCatalogueTitle(for: section)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatalogueCell", for: indexPath) as! CatalogueTableViewCell
        cell.delegate = self
        cell.catalogue = viewModel.catalogues[indexPath.section]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let isFeatures = viewModel.catalogues[indexPath.section].category?.caseInsensitiveCompare("Features") == .orderedSame
        return isFeatures ? 143 : 205
    }

    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerView = view as? UITableViewHeaderFooterView {
            if headerView.textLabel?.text?.caseInsensitiveCompare("TV Shows") == .orderedSame {
                headerView.textLabel?.text? = "TV Shows"
            } else {
                headerView.textLabel?.text? = headerView.textLabel?.text?.capitalized ?? ""
            }
            headerView.textLabel?.font = headerView.textLabel?.font.withSize(20)
        }
    }
    
}

// MARK: - CatalogueTabelViewCellDelegate

extension CatalogueTableViewController: CatalogueTableViewCellDelegate {
    
    func selectedAsset(_ item: Item) {
        selectedItem = item
        performSegue(withIdentifier:"showAssetDetails", sender: self)
    }
    
}
