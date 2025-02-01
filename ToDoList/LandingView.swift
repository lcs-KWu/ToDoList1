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
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    
                    ItemView(title:"Study for chem", done: true)
                    Label(title: {Text("Study For Math")}, icon: {
                        Image(systemName: "circle")
                    })
                    Label(title: {Text("Study For Economics")}, icon: {
                        Image(systemName: "circle")
                    })
                    
                }
                .searchable(text: $SearchText)
                
                HStack{
                    TextField("enter a task", text: $newItemDescription)
                    Button("add"){
                        //add the new todo item
                    }
                }
                .padding(20)
            }
            .navigationTitle("To-do")
            
        }
        
    }
}

#Preview {
    LandingView()
}

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
