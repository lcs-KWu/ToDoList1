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
                    Text("Study For Chemistry")
                    Text("Study For Math")
                    Text("Study For Economics")
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
