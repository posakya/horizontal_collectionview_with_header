//
//  ViewController.swift
//  CollectionViewWithHeader
//
//  Created by Roshan on 4/23/19.
//  Copyright © 2019 ARtech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var categories = ["Action", "Drama", "Science Fiction", "Kids", "Horror","Action", "Drama", "Science Fiction", "Kids", "Horror","Action", "Drama", "Science Fiction", "Kids", "Horror"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionFooterHeight = 0.0
        tableView.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 0, right: 0)
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return categories[section]
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        let label = UILabel(frame: CGRect(x: 10, y: 5, width: self.view.frame.width, height: 30))
        label.text = categories[section]
        label.font = UIFont(name: "Avenir-Book", size: 20.0)
        headerView.addSubview(label)
        return headerView

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
       
        return cell
    }
    
}

