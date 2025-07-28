//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Pooja Karthikeyan on 7/28/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack{
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.purple))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            .padding()
            Button {

            } label: {
                    Text("Save")
            }

        }
    }
}

#Preview {
    NewToDoView()
}
