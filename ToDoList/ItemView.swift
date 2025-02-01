//
//  ItemView.swift
//  ToDoList
//
//  Created by Yixuan Wu on 2025-02-01.
//
import SwiftData
import SwiftUI

struct ItemView: View {
    //MARK: stored proerties
    @Binding var currentItem: TodoItem
    var body: some View {
        Label(title: {TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)}, icon: {
            Image(systemName: currentItem.done == true ? "checkmark.circle": "circle")
            //tap to mark as done
            .onTapGesture {
                currentItem.done.toggle()
            }
        })
    }
}

//#Preview {
    //ItemView(currentItem: Binding.constant(firstItem))
//}
