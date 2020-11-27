//
//  TaskReducer.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/28.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift

func taskReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()
    
    switch action {
    case let action as CreateTaskAction:
        state.tasks?.append(action.task)
    case let action as DeleteTaskAction:
        state.tasks?.remove(at: action.index)
    default:
        break
    }
    
    return state
}
