//
//  ViewController.swift
//  IntervalTimer
//
//  Created by Laura Artiles on 2/26/17.
//  Copyright © 2017 Laura Artiles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  let cellIdentifier = "CellIdentifier"
  let tempLabels = ["Warm-up", "Interval length", "Number of intervals", "Cool down", "Total time"]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tempLabels.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

    // Fetch Fruit
    let label = tempLabels[indexPath.row]

    // Configure Cell
    cell.textLabel?.text = label

    return cell
  }
}

