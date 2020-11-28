//
//  Actions.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/28.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift

struct CreateTaskAction: Action {
    let task: Task
    
    init(title: String) {
        self.task = (title: title, isCompleted: false)
    }
}

struct DeleteTaskAction: Action {
    let index: Int
}

struct UpdateTaskAction: Action {
    let index: Int
    let isCompleted: Bool
}
