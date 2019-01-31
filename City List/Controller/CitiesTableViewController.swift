//
//  CitiesTableViewController.swift
//  City List
//
//  Created by R. Kukuh on 31/01/19.
//  Copyright © 2019 R. Kukuh. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {
    
    var countries: [Country] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeData()
    }

    // MARK: - TableView data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return countries.count
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        
        return countries[section].cities.count
    }
    
    // MARK: - TableView cell and section functions
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell",
                                                 for: indexPath)
        
        cell.textLabel?.text = countries[indexPath.section].cities[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        
        return countries[section].name
    }
    
    // MARK: - Helper
    
    func initializeData()
    {
        countries.append(Country(name: "Indonesia",
                                 cities: [
                                    City(name: "Jakarta"),
                                    City(name: "Bandung"),
                                    City(name: "Surabaya"),
                                    City(name: "Malang"),
                                ])
        )
        
        countries.append(Country(name: "Japan",
                                 cities: [
                                    City(name: "Tokyo"),
                                    City(name: "Kyoto")
                                ])
        )
        
        countries.append(Country(name: "Brazil",
                                 cities: [
                                    City(name: "Rio de Janeiro"),
                                    City(name: "San Paulo"),
                                    City(name: "Ibiza")
                                ])
        )
    }
}
