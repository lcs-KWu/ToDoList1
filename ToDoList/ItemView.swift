//
//  ItemView.swift
//  ToDoList
//
//  Created by Yixuan Wu on 2025-02-01.
//

import SwiftUI

struct ItemView: View {
    //MARK: stored proerties
    @Binding var currentItem: TodoItem
    var body: some View {
        Label(title: {Text(currentItem.title)}, icon: {
            Image(systemName: currentItem.done == true ? "checkmark.circle": "circle")
            //tap to mark as done
            .onTapGesture {
                currentItem.done.toggle()
            }
        })
    }
}

#Preview {
    ItemView(currentItem: Binding.constant(firstItem))
}
