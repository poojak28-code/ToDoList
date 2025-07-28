//
//  ContentView.swift
//  ToDoList
//
//  Created by Pooja Karthikeyan on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    var body: some View {
        VStack{
            HStack{
                Text("To-Do List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Button {
                    withAnimation{
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                }
                
            }
            .padding()
            Spacer()
        }
        if showNewTask{
            NewToDoView()
        }
    }
}
#Preview {
    ContentView()
}
