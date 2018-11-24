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
    var testDatas = ["test1", "test2", "test3", "test4", "test5"]

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        removeEmptyCells()
    }

    func removeEmptyCells() {
        tableView.tableFooterView = UITableView()
    }

}

extension MySubscriptionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testDatas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SubscriptionTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SubscriptionTableViewCell

        cell.nameLabel.text = testDatas[indexPath.row]

        cell.roundedImageView.image = #imageLiteral(resourceName: "kmk.jpeg")
        cell.roundedImageView.layer.cornerRadius = cell.roundedImageView.frame.height / 2
        cell.roundedImageView.layer.masksToBounds = true

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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
