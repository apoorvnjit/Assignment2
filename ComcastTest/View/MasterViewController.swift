//
//  MasterViewController.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/25/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import UIKit
protocol CharacterSelectionDelegate: class {
    func characterSelected(_ newCharacter: CharacterViewModel)
}

class MasterViewController: UITableViewController, UISearchResultsUpdating, UISplitViewControllerDelegate {
    
    
    var relatedViewModels = [CharacterViewModel]()
    var filteredViewModel = [CharacterViewModel]()
    weak var delegate: CharacterSelectionDelegate?
    
    var resultSearchController = UISearchController()
    let cell = "Cell"
    
    @IBOutlet var characterTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchDataandReload()
    }
    

    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: setupUI
     functionality: to implement any UI related update in the screen
    */
    func setupUI(){
        setupSearchBar()
        self.navigationController?.navigationBar.backgroundColor = Color.primaryColor
    }
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: setupSearchBar
     functionality: to create search bar
     */
    
    func setupSearchBar(){
        
        resultSearchController = ({
            let controller = UISearchController(searchResultsController: nil)
            controller.searchResultsUpdater = self
            controller.dimsBackgroundDuringPresentation = false
            controller.searchBar.sizeToFit()
            
            tableView.tableHeaderView = controller.searchBar
            
            return controller
        })()
    }
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: fetchDataandReload
     functionality: to get data from API
     */
    
    fileprivate func fetchDataandReload() {
        
        Service.shared.fetchData{ (data, err) in
            if let err = err {
                print("Failed to fetch data in api:", err)
                self.alert(message: err.localizedDescription)
                return
            }
            self.relatedViewModels = data?.relatedTopics?.map({return CharacterViewModel(relatedTopics: $0)}) ?? []
            self.tableView.reloadData()
        }

    }
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name:
     functionality: to show alert with message
     */
    func alert(message: String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name:
     functionality: called to decide the number of rows
     */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if  (resultSearchController.isActive) {
            return filteredViewModel.count
        } else {
            return relatedViewModels.count
        }
        
    }

    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name:
     functionality: called to configure the row
     */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        // Configure the cell...\
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cell, for: indexPath)
        var characterData: CharacterViewModel
        if (resultSearchController.isActive) {
            characterData = self.filteredViewModel[indexPath.row]
        } else {
            characterData = self.relatedViewModels[indexPath.row]
        }
        
        cell.textLabel?.text = characterData.name
        cell.backgroundColor = Color.secondaryColor
        
        return cell
    }
 
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name:
     functionality: called when particular row gets selected
     */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCharacter = relatedViewModels[indexPath.row]
        delegate?.characterSelected(selectedCharacter)
        if let detailViewController = delegate as? DetailViewController {
            splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
        
    }
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: updateSearchResults
     functionality: function to implement search logic
     */
        func updateSearchResults(for searchController: UISearchController) {
        
         filteredViewModel.removeAll(keepingCapacity: false)
        let searchPredicate = NSPredicate(format: "SELF.description contains[cd] %@", searchController.searchBar.text!)
        let characterArray = (self.relatedViewModels as NSArray).filtered(using: searchPredicate)
        self.filteredViewModel = characterArray as! [CharacterViewModel]
        self.tableView.reloadData()
    }
    
    
    

}
