//
//  Actions.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/28.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift

struct CreateTaskAction: Action {
    let task: String
}

struct DeleteTaskAction: Action {
    let index: Int
}
