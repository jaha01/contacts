//
//  ViewController.swift
//  Contacts
//
//  Created by Jahongir on 10/1/20.
//  Copyright © 2020 Jahongir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var UIViewController: UITableView!
    
    let names = [
    "John Smith",
    "Ruziboev Sodiq",
    "Imatov Bakhtier",
    "Avezov Jurabek"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UIViewController.delegate = self
        UIViewController.dataSource = self
        
        
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
    
}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}
