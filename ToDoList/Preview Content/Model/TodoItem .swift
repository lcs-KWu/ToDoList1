//
//  TodoItem .swift
//  ToDoList
//
//  Created by Yixuan Wu on 2025-02-01.
//

import SwiftData

 @Model
class TodoItem: Identifiable {
    var title: String
    var done: Bool

    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}


let firstItem = TodoItem(title: "study", done: true)
let secondItem = TodoItem(title: "eat", done: true)

let exampleItem = [
    firstItem,
    secondItem
]
