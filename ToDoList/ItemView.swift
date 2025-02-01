//
//  ItemView.swift
//  ToDoList
//
//  Created by Yixuan Wu on 2025-02-01.
//

import SwiftUI

struct ItemView: View {
    //MARK: stored proerties
    let title: String
    let done: Bool
    var body: some View {
        Label(title: {Text(title)}, icon: {
            Image(systemName: done == true ? "checkmark.circle": "circle")
        })
    }
}


#Preview {
    ItemView(title: "study", done: true)
}
