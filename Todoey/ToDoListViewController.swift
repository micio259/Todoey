//
//  ViewController.swift
//  Todoey
//
//  Created by Michał Wziątek on 09.03.2018.
//  Copyright © 2018 Michał Wziątek. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos","Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - Tableview Detegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
//        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        let cell = tableView.cellForRow(at: indexPath)
        
        if cell?.accessoryType != .checkmark {
            cell?.accessoryType = .checkmark
        }
        
        else {
            cell?.accessoryType = .none
        }
     
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

