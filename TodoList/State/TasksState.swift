//
//  TasksState.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/29.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift

typealias Task = (title: String, isCompleted: Bool)

struct TasksState: StateType {
    var tasks: [Task]? = []
}
