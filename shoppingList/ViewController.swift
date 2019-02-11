//
//  ViewController.swift
//  shoppingList
//
//  Created by Jacob Smith on 2/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//  hi

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var barTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
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
}

