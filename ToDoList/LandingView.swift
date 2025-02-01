//
//  ContentView.swift
//  ToDoList
//
//  Created by Yixuan Wu on 2025-01-30.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Text("Study For Chemistry")
                    Text("Study For Math")
                    Text("Study For Economics")
                }
                
            }
            .navigationTitle("To-do")

        }
        .padding()
    }
}

#Preview {
    LandingView()
}
