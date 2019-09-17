//
//  FirstViewController.swift
//  UIBuildingWithoutStoryboard
//
//  Created by ユーザー１ on 2018/12/28.
//  Copyright © 2018 Masaya Ujihara. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  var tableView: UITableView!
  var array = ["a","b"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.white
    
    tableView = UITableView()
    tableView.frame = view.frame
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(FirstCell.self, forCellReuseIdentifier: "FirstCell")
    view.addSubview(tableView)
  }
}

extension FirstViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as! FirstCell
    cell.sampleText.text = array[indexPath.row]
    return cell
  }
}

extension FirstViewController: UITableViewDelegate {
  
}
