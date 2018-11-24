//
//  MySubscriptionViewController.swift
//  Bluemoon
//
//  Created by Gaon Kim on 25/11/2018.
//  Copyright © 2018 mashup6th. All rights reserved.
//

import UIKit

class MySubscriptionViewController: UIViewController {

    let cellIdentifier = "mySubscriptionCell"
    var testDatas = ["test1", "test2", "test3"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension MySubscriptionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testDatas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

        cell.textLabel?.text = testDatas[indexPath.row]

        return cell
    }

}

extension MySubscriptionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteButton = UIContextualAction(style: .destructive, title: "삭제") { _, _, success in
            self.testDatas.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()

            success(true)
        }

        deleteButton.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.6117647059, blue: 1, alpha: 1)
        let config = UISwipeActionsConfiguration(actions: [deleteButton])
        config.performsFirstActionWithFullSwipe = false

        return config
    }
}
