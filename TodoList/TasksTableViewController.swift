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
            cell.textLabel?.text = task
        }
        
        return cell
    }
    
    @IBAction private func createButtonTapped(_ sender: UIBarButtonItem) {
        mainStore.dispatch(CreateTaskAction(task: "to do"))
    }
    
}
