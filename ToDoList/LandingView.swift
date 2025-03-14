//
//  ContentView.swift
//  ToDoList
//
//  Created by Yixuan Wu on 2025-01-30.
//

import SwiftUI
struct LandingView: View {
    //MARK: Stored Properties
    @State var newItemDescription = ""
    //search text
    @State var SearchText = ""
    //Access the model contant
    @Environment(\.modelContext) var modelContext
    //todo list
    @State var todos: [TodoItem] = exampleItem
    
    var body: some View {
        NavigationView{
            VStack{
                List($todos){ $todo in
                    ItemView(currentItem: $todo)
                    // Delete a to-do item
                    .swipeActions {
                        Button(
                            "Delete",
                            role: .destructive,
                            action: {
                                delete(todo)
                            }
                        )
                    }
                    
                }
                .searchable(text: $SearchText)
                
                HStack{
                    TextField("enter a task", text: $newItemDescription)
                    Button("add"){
                        // Add the new to-do item
                        createToDo(withTitle: newItemDescription)
                    }
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To-do")
            
        }
        
    }
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instance
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        // Append to the array
        todos.append(todo)
    }
    
    func delete(_ todo: TodoItem) {
        // Remove the provided to-do item from the array
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
    }
}

//#Preview {
 //   LandingView()
//}


