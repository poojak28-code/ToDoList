//
//  ContentView.swift
//  ToDoList
//
//  Created by Pooja Karthikeyan on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Text("To-Do List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Button {

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
    }
}
#Preview {
    ContentView()
}
