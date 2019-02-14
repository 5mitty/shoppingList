//
//  ViewController.swift
//  shoppingList
//
//  Created by Jacob Smith on 2/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//  hi

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var barTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var items: [Item] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let item1 = Item(name: "milk", amount: 2)
        let item2 = Item(name: "eggs", amount: 5)
        items = [item1, item2]
        let item3 = Item(name: "bread", amount: 1)
        items.append(item3)
    }

    @IBAction func whenBarButtonPressed(_ sender: UIBarButtonItem) {
        if let newItemName = barTextField?.text, newItemName != "" {
            let newItem = Item(name: newItemName, amount: 0)
            items.append(newItem)
            tableView.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        //cell.
        let currentItemName = items[indexPath.row].name
        let currentItemQuantity = items[indexPath.row].amount
        cell.detailTextLabel?.text = "Quantity: \(currentItemQuantity)"
        cell.textLabel?.text = currentItemName
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 66
    }
}

