//
//  TodoItem .swift
//  ToDoList
//
//  Created by Yixuan Wu on 2025-02-01.
//

import Foundation

struct TodoItem:Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "study", done: true)
let secondItem = TodoItem(title: "study", done: true)

let exampleItem = [
    firstItem,
    secondItem,
]
