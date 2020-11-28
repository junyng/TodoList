//
//  AppState.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/28.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift

typealias Task = (title: String, isCompleted: Bool)

struct AppState: StateType {
    var tasks: [Task]? = []
}
