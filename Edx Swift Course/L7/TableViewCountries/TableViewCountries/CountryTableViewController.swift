//
//  CountryTableViewController.swift
//  TableViewCountries
//
//  Created by Alex Lai on 11/6/21.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    @IBAction func btnEdit(_ sender: Any) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    var countries: [Country] = [
        Country(name: "Australia", flag: "🇦🇺", region: "Oceania", population: "24.13m"),
        Country(name: "New Zealand", flag: "🇳🇿", region: "Oceania", population: "4.69m"),
        Country(name: "Canada", flag: "🇨🇦", region: "North America", population: "36.3m"),
        Country(name: "Norway", flag: "🇳🇴", region: "Scandinavia", population: "3.8m"),
        Country(name: "Soloman Island", flag: "🇸🇧", region: "Micronesia", population: "611k"),
        Country(name: "India", flag: "🇮🇳", region: "South Asia", population: "1.324b"),
        Country(name: "China", flag: "🇨🇳", region: "East Asia", population: "1.379b"),
        Country(name: "Gambia", flag: "🇬🇲", region: "West Africa", population: "2.039m"),
        Country(name: "Chile", flag: "🇨🇱", region: "South America", population: "17.91m"),
        Country(name: "Colombia", flag: "🇨🇴", region: "South America", population: "48.65m"),
        Country(name: "Germany", flag: "🇩🇪", region: "Europe", population: "82.67m"),
        Country(name: "Guatemala", flag: "🇬🇹", region: "Central America", population: "16.58m"),
        Country(name: "Guyana", flag: "🇬🇾", region: "South America", population: "773k"),
        Country(name: "United Arab Emirates", flag: "🇦🇪", region: "Western Asia", population: "9.4m"),
        Country(name: "Albania", flag: "🇦🇱", region: "Balkan Peninsula", population: "2.873m"),
        Country(name: "Ethiopia", flag: "🇪🇹", region: "Horn of Africa", population: "105m"),
        Country(name: "Greece", flag: "🇬🇷", region: "South Eastern Europe", population: "10.77m"),
        Country(name: "Kyrgystan", flag: "🇰🇬", region: "Central Asia", population: "6.2m")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0{
            return countries.count
        }
        else{
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        
        let country = countries[indexPath.row]
        cell.textLabel?.text = "\(country.flag) - \(country.name)"
        cell.detailTextLabel?.text = country.region

         

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedCountry = countries.remove(at: fromIndexPath.row)
        countries.insert(movedCountry, at: to.row)
        tableView.reloadData()
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
