//
//  ViewController.swift
//  subclass-uitableviewcell
//
//  Created by Tuan Nguyen on 11/8/17.
//  Copyright © 2017 Tuan Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var lists: [Any] = []

  override func viewDidLoad() {
    super.viewDidLoad()

    self.lists.append(1)
    self.lists.append(2)
    self.lists.append("a")
    self.lists.append(3)
    self.lists.append("b")

    self.tableView.dataSource = self
    self.tableView.register(SubClassCellA.self, forCellReuseIdentifier: "SubClassCellA")
    self.tableView.register(SubClassCellB.self, forCellReuseIdentifier: "SubClassCellB")
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.lists.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let object = self.lists[indexPath.row] as? Int {
      let cell = tableView.dequeueReusableCell(withIdentifier: "SubClassCellA", for: indexPath) as! SubClassCellA
      cell.object = object
      return cell
    } else if let object = self.lists[indexPath.row] as? String {
      let cell = tableView.dequeueReusableCell(withIdentifier: "SubClassCellB", for: indexPath) as! SubClassCellB
      cell.object = object
      return cell
    } else {
      fatalError()
    }
  }
}

