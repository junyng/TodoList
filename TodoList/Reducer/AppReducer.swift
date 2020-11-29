//
//  AppReducer.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/29.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        tasksState: tasksReducer(action: action, state: state?.tasksState)
    )
}
