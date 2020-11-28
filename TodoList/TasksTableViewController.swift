//
//  TasksTableViewController.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/28.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift
import UIKit

class TasksTableViewController: UITableViewController, StoreSubscriber {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainStore.subscribe(self)
    }
    
    func newState(state: AppState) {
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainStore.state.tasks?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if let tasks = mainStore.state.tasks {
            let task = tasks[indexPath.row]
            cell.textLabel?.text = task.title
            cell.accessoryType = task.isCompleted ? .checkmark : .none
        }
        
        return cell
    }
    
    @IBAction private func createButtonTapped(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(
            title: "create task",
            message: nil,
            preferredStyle: .alert
        )
        let defaultAction = UIAlertAction(
            title: "create",
            style: .default,
            handler: { (_) in
                guard let textField = alertController.textFields?.first,
                    let title = textField.text else { return }
                mainStore.dispatch(
                    CreateTaskAction(title: title)
                )
            }
        )
        alertController.addAction(defaultAction)
        alertController.addTextField(configurationHandler: nil)
        present(alertController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        mainStore.dispatch(
            UpdateTaskAction(
                index: indexPath.row
            )
        )
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            mainStore.dispatch(
                DeleteTaskAction(index: indexPath.row)
            )
        }
    }
}
