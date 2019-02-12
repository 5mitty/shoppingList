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
        
        let item1 = Item(name: "milk")
        let item2 = Item(name: "eggs")
        items = [item1, item2]
    }

    @IBAction func whenBarButtonPressed(_ sender: UIBarButtonItem) {
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 65
    }
}

